<%@page import="MyPackage.EmailSender"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    try{
    String name = request.getParameter("name");
    String contact = request.getParameter("contactno");
    String email = request.getParameter("emailaddress");
    String query = request.getParameter("query");
    SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    String enquiry_dt = df.format(new Date());
    String gender = request.getParameter("gender");
    String id = name + "_" + contact + "_" + enquiry_dt;
//    out.print(name + "<br /> " + contact + "<br /> " + email + "<br /> " + query + "<br /> " + enquiry_dt + "<br /> " + gender + " <br />" + id + "<br />");
    ConnectionManager cm = new ConnectionManager();
    String query1 = "insert into customer_enquiry values('" + id + "','" + name + "','" + gender + "','" + contact + "','" + email + "','" + query + "','" + enquiry_dt + "')";
    if (cm.executeNonQuery(query1)) {
        new SmsSender().SendSms(contact, "Enquiry successfully submitted for username " + email + " ");
        new EmailSender().sendMail("restro.krtt@gmail.com", email, "Restro Fun", "Your Enquiry is Successfully Submitted. Restro Fun");
        out.print("<script>alert('Your enquiry is submitted');window.location.href='../enquiry.jsp';</script>");
    } else {
        out.print("<script>alert('Database error');window.location.href='../enquiry.jsp';</script>");
    }
    }
    catch(Exception e ){
        out.print("<script>window.location.href='error.jsp'</script>");
    }

%>