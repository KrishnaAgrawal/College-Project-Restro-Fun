<%@page import="MyPackage.ConnectionManager"%>
<%
    String msg = null;
    try{
    String fid = request.getParameter("fid");
    ConnectionManager cm = new ConnectionManager();
    String query = "delete from restro_feedback where restro_feedback_id='" + fid + "'";
    out.print(fid);
    msg = (cm.executeNonQuery(query)) ? "Feedback is deleted" : "Something went wrong";
    }
    catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>

<script>
    alert('<%=msg%>');
    window.location.href = '../user_feedback_management.jsp';
</script>
