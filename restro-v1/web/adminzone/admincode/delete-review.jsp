<%@page import="MyPackage.ConnectionManager"%>
<%
    String msg = null;
    try{
    String fid = request.getParameter("fid");
    ConnectionManager cm = new ConnectionManager();
    String query = "delete from restro_review where restro_review_id='" + fid + "'";

    msg = (cm.executeNonQuery(query)) ? "Review is deleted" : "Something went wrong";
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>

<script>
    alert('<%=msg%>');
    window.location.href = '../user-review-management.jsp';
</script>
