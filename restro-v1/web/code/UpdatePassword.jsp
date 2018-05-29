<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.EmailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%
    try{
    String userName = (String) session.getAttribute("userName");
    String email = (String) session.getAttribute("email");
    String password = request.getParameter("password");
    String rePassword = request.getParameter("rePassword");
    if (password.equals(rePassword)) {
        String query1 = "update customer_registration set password='" + password + "' where email='" + email + "'";
        String query2 = "update login set password='" + password + "' where email='" + email + "'";
        String query3 = "select contact from customer_registration where email ='" + email + "' and  password='" + password + "'";
        ConnectionManager cm = new ConnectionManager();
        boolean b1 = cm.executeNonQuery(query2);
        boolean b2 = cm.executeNonQuery(query1);
        ResultSet rs = cm.selectQuery(query3);
        if (rs.next()) {
            SmsSender ss = new SmsSender();
            ss.SendSms(rs.getString(1), "You have successfully changed your passoword.");
        }
        if (b1 && b2) {
            EmailSender es = new EmailSender();
            es.sendMail("restro.krtt@gmail.com", email, "Restro Fun Password Change", "<html>You have successfully changed your passoword.</html>");
            out.print("<script>window.location.href='../login.jsp';alert('Password Updated');</script>");
        }
    } else {
        out.print("<script>window.location.href='../MakeANewPassword.jsp';alert('Password does not matched');</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>
