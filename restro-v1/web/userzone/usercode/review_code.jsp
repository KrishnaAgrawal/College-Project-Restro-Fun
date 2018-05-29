<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    try{
    ResultSet rs = null;
    String rating = (request.getParameter("rating"));
    String restro_review_text = request.getParameter("reviewtext");
    ConnectionManager cm = new ConnectionManager();
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now();
    String currentTime = dtf.format(now);
    String name[] = new String[100];
    String customer_id = (String)session.getAttribute("user_id");
    String restro_id = (String)session.getAttribute("restro_id");
    String restro_name = restro_id.split("_")[0];
    String restro_review_id = restro_id + customer_id + currentTime;
    String query1 = "insert into restro_review values('"
            + "" + restro_name + "',"
            + "'" + restro_review_id + "',"
            + "'" + restro_review_text + "',"
            + "'" + customer_id + "',"
            + "'" + currentTime + "')";
    if (cm.executeNonQuery(query1)) {
        out.print("<script>alert('Your review is submitted');window.location.href='../user_review.jsp';</script>");
    } else {
        out.print("<script>alert('Database Error!!!');window.location.href='../user_review.jsp';</script>");
    }
    }catch(Exception e ){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>
