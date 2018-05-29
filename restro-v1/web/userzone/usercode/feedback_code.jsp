<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    try{
    ResultSet rs = null;
    String feed_type = request.getParameter("feed_type");
    String restro_feedback_text = request.getParameter("desc_feed");
    ConnectionManager cm = new ConnectionManager();
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now();
    String currentTime = dtf.format(now);
    String customer_id = (String)session.getAttribute("user_id");
    String restroID = null;
    String urlQuery = null;
    String q = null;
    if(session.getAttribute("fid") != "" && session.getAttribute("fid") != null){
        urlQuery = (String)session.getAttribute("fid");
        q = urlQuery.split("fid=")[0];
        restroID = urlQuery.split("fid=")[1];
    } else if(session.getAttribute("restro_id") != "" && session.getAttribute("restro_id") != null){
        restroID = (String)session.getAttribute("restro_id");
    }
    String restro_name = restroID.split("_")[0];
    String restro_feedback_id = restroID + customer_id + currentTime;
    String query1 = "insert into restro_feedback values('" + restro_name + "','" + restro_feedback_id + "','" + restro_feedback_text + "','" + customer_id + "','" + currentTime + "')";
    if (cm.executeNonQuery(query1)) {
        out.print("<script>alert('Your feedback is submitted');window.location.href='../show-more-details.jsp?fid="+restroID+"';</script>");
    } else {
        out.print("<script>alert('Database Error!!!');window.location.href='../show-more-details.jsp?fid="+restroID+"';</script>");
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>