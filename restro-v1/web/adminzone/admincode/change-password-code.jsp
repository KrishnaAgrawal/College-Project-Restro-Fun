<%@page import="MyPackage.ConnectionManager"%>
<%
    try{
    String oldPassword = request.getParameter("oldPassword");
    String newPassword = request.getParameter("newPassword");
    String reEnterPassword = request.getParameter("reEnterPassword");
    if (newPassword.equals(reEnterPassword)) {
        if (!newPassword.equals(oldPassword)) {
            String query = "update login set password='" + newPassword + "' where type='admin'";
            ConnectionManager manager = new ConnectionManager();
            if (manager.executeNonQuery(query)) {
                out.print("<script>alert('Password successfully changed.');window.location.href='../../login.jsp';</script>");
            } else {
                out.print("<script>alert('Password can not be changed at this moment try again later.');window.location.href='../change-password.jsp';</script>");
            }
        } else {
            out.print("<script>alert('New password and Old Password can not be same.');window.location.href='../change-password.jsp';</script>");
        }
    } else {
        out.print("<script>alert('New password and Re-Entered Password does not matched.');window.location.href='../change-password.jsp';</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>