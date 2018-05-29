<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.EmailSender"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    try{
    String name = request.getParameter("name");
    String contact = request.getParameter("contactno");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zipcode = request.getParameter("zipcode");
    String email = request.getParameter("emailaddress");
    String username = request.getParameter("username");
    SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt = df.format(new Date());
    String usertype = "customer";
    String id = (String) session.getAttribute("user_id");
    String gender = request.getParameter("gender");
    ConnectionManager cm = new ConnectionManager();
    String query = "update customer_registration SET "
            + "gender = '" + gender + "',"
            + "contact = '" + contact + "',"
            + "address = '" + address + "',"
            + "city = '" + city + "',"
            + "state = '" + state + "',"
            + "zipcode = '" + zipcode + "' "
            + "where id = '" + id + "'";
    if (cm.executeNonQuery(query)) {
        out.print("<script>alert('Details are updated done successfully');window.location.href='../user_edit_profile.jsp';</script>");
    } else {
        out.print("<script>alert('Database error.Please try after some time.');</script>");
    }
    //if(cm.executeNonQuery(query1) && cm.executeNonQuery(query1) )
    //{
//          new SmsSender().SendSms(contact, "Registration done successfully for username "+username+" and password "+password);
    //       new EmailSender().sendMail("shreekrishnaagrawal@gmail.com",username, "Restro Fun Resgistration Successful", "<h3>Hello"+name+"<h3/><br/><p>Welcome to the world of Restro Fun.<br/>Thankyou for your interest.<br/>Your Credentials are: -<br />User Name: "+username+"<br/>Password: "+password+"</p>");
    // out.print("<script>alert('Details are updated done successfully');window.location.href='../registration.jsp';</script>");
    //}
    //else
    // {
    //  out.print("<script>alert('Database error.Please try after some time.');</script>");
    //}
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }

%>