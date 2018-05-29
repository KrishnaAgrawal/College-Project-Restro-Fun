<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%
    try{
    String old_pwd = request.getParameter("old_pwd");
    String new_pwd = request.getParameter("new_pwd");
    String cnfrm_pwd = request.getParameter("cnfrm_pwd");
    String password = null;
    if (new_pwd.equals(cnfrm_pwd)) {
            String id = (String)session.getAttribute("user_id");
            String query = "select password from customer_registration where id = '"+ id +"'";
            String query1 = "update login set password='" + new_pwd + "' where id='" + id + "' and password='" + old_pwd + "'";
            String query2 = "update customer_registration set password='" + new_pwd + "' where id='" + id + "' and password='" + old_pwd + "'";
            ConnectionManager cm = new ConnectionManager();
            ResultSet rs = cm.selectQuery(query);
            if(rs.next()){
                password = rs.getString("password");
                out.print(password);
            }
            if(password.equals(old_pwd)){
                if (cm.executeNonQuery(query1)) {
                    if (cm.executeNonQuery(query2)) {
                        out.print("<script>alert('Password changed successfully !!');window.location.href='../user_change_password.jsp';</script>");
                    } else {
                        out.print("<script>alert('Password is not updated in registration !!');window.location.href='../user_change_password.jsp';</script>");
                    }
                } else {
                    out.print("<script>alert('Database Error !!');window.location.href='../user_change_password.jsp';</script>");
                }
        } else {
            out.print("<script>alert('Old Password is not correct !!');window.location.href='../user_change_password.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Password does not match !!');window.location.href='../user_change_password.jsp';</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }

%>