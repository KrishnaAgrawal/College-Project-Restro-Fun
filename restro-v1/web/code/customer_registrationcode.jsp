<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.EmailSender"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    try{
    String name = request.getParameter("customername");
    String contact = request.getParameter("contactno");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zipcode = request.getParameter("zipcode");
    String email = request.getParameter("emailaddress");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt = df.format(new Date());
    String type = "customer";
    String captcha = request.getParameter("captcha");
    String captchacode = request.getParameter("capcode");
    String id = contact + email;
    if (captchacode.equals(captcha)) {
        ConnectionManager cm = new ConnectionManager();
        String queryCheckID = "select id from customer_registration where id = '" + id + "' ";
        String query1 = "insert into customer_registration values('" + name + "','" + id + "','" + gender + "','" + contact + "','" + address + "','" + city + "','" + state + "','" + zipcode + "','" + email + "','" + password + "','" + registration_dt + "')";
        String query2 = "insert into login values('" + id + "','" + email + "','" + password + "','" + type + "','" + contact + "')";
        ResultSet rs = cm.selectQuery(queryCheckID);
        if (!rs.next()) {
            if (cm.executeNonQuery(query1) && cm.executeNonQuery(query2)) {
                new SmsSender().SendSms(contact, "Registration done successfully for email " + email + " and password " + password + ". Check mail for details.");
                new EmailSender().sendMail("restro.krtt@gmail.com", email, "Restro Fun Resgistration Successful", "<h3>Hello " + name + ",</h3><br/><p>Welcome to the world of Restro Fun.<br/>Thankyou for your interest.<br/><br/>Your Credentials are: -<br /><br />Email: " + email + "<br/>Phone " + contact + "<br/>Password: " + password + "</p>");
                out.print("<script>alert('Registration done successfully');window.location.href='../login.jsp';</script>");
            } else {
                out.print("<script>alert('Database error');window.location.href='../registration.jsp';</script>");
            }
        } else {
            out.print("<script>alert('Phone number and email already registered.');window.location.href='../registration.jsp';</script>");
        }
    } else {
        out.println("<script>alert('Invalid Captcha');window.location.href='../registration.jsp';</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>