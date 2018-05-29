<%@page import="MyPackage.EmailSender"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    try{
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String email = request.getParameter("email");
    String query = "select * from customer_registration where name='" + name + "' and contact='" + number + "' and email='" + email + "'";
    ConnectionManager cm = new ConnectionManager();
    ResultSet rs = cm.selectQuery(query);
    if (rs.next()) {
        SmsSender ss = new SmsSender();
        String password = rs.getString("password");
        String contactno = number;
        String emailaddress = email;
        ss.SendSms(number, "Your password is in inverted quotes " + "'" + password + "'");
        EmailSender es = new EmailSender();
        es.sendMail("login4skag@gmail.com", emailaddress, "Recovered Password", "<html>Your password is in inverted quotes " + "'" + password + "'</html>");
        out.print("<script>window.location.href='../login.jsp';alert('Password has been sent to your phone number and email address');</script>");
    } else {
        out.print("<script>window.location.href='../ForgetPasswordInfo.jsp';alert('Please enter a valid credentials');</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>