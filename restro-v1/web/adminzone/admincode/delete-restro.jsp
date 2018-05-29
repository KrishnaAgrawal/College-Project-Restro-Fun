<%@page import="MyPackage.ConnectionManager"%>
<%
    String msg = null;
    try{
    String fid = request.getParameter("fid");
    ConnectionManager cm = new ConnectionManager();
    String query = "delete from restro_details where id='" + fid + "'";

    msg = (cm.executeNonQuery(query)) ? "Restro is deleted" : "Something went wrong";
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>

<script>
    alert('<%=msg%>');
    window.location.href = '../manage-restro.jsp';
</script>
