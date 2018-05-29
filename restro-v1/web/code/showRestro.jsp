
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%
    String search=request.getParameter("search");
    String query="select * from restro like %"+search+"%";
    ConnectionManager cm=new ConnectionManager();
    ResultSet rs=cm.selectQuery(query);
    if(rs.next()){
        
    }
%>