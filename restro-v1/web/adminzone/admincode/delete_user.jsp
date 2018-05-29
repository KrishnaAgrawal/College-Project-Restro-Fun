<%@page import="MyPackage.ConnectionManager"%>
<%
    String msg = null;
    try{
  String username=request.getParameter("username");
  ConnectionManager cm=new ConnectionManager();
  String q="delete from customer_registration where email='"+username+"'";
  msg=(cm.executeNonQuery(q)==true?"User is deleted":"User is not deleted");
    }catch(Exception e ){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>
<script>
    alert('<%=msg%>');
    window.location.href="../user_management.jsp";
</script>