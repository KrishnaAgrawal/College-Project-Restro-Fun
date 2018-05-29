<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String email = request.getParameter("email");
    String userName = request.getParameter("userName");
    session.setAttribute("userName", userName);
    session.setAttribute("email", email);
    String query = "select * from customer_registration where name='" + name + "' and phoneNumber='" + number + "' and email='" + email + "'";
    ConnectionManager cm = new ConnectionManager();
    ResultSet rs = cm.selectQuery(query);
    if (rs.next()) {
        out.print("<script>window.location.href='MakeANewPassword.jsp';</script>");
    } else {
        out.print("<script>alert('No result');window.location.href='forgetPassword.jsp';</script>");
    }
%>