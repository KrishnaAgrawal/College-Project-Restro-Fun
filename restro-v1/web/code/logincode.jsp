<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%
    try{
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    ConnectionManager cm = new ConnectionManager();
    String query = null;
    String myID = request.getParameter("id");
    String url = request.getParameter("q");
    try {
        query = "select type,id from login where contact ='" + username + "' and password='" + password + "'";
        ResultSet rs = null;
        rs = cm.selectQuery(query);
        if (rs.next()) {
            String id = rs.getString("id");
            String userType = rs.getString("type");
            if (userType.equals("customer") == true) {
                session.setAttribute("user_id", id);
                if(session.getAttribute("fid") != "" && session.getAttribute("fid") != null){
                    String urlQuery = (String)session.getAttribute("fid");
                    String q = urlQuery.split("fid=")[0];
                    String restroID = urlQuery.split("fid=")[1];
                    session.setAttribute("restroID", restroID);
                    if(q.contains("user_feedback.jsp")){
                        response.sendRedirect("../userzone/user_feedback.jsp");
                    } else if(q.contains("user_review.jsp")) {
                        response.sendRedirect("../userzone/user_review.jsp");
                    }
                }
                response.sendRedirect("../userzone/user_dashboard.jsp");
            } else if (userType.equals("admin")) {
                session.setAttribute("user_id", id);
                response.sendRedirect("../adminzone/adminhome.jsp");
            }
        }
    query = "select type,id from login where email ='" + username + "' and password='" + password + "'";
        rs = cm.selectQuery(query);
        if (rs.next()) {
            String id = rs.getString("id");
            String userType = rs.getString("type");
            if (userType.equals("customer") == true) {
                session.setAttribute("user_id", id);
                String fid = null;
                String arrRestro[] = null;
                String restro_id = null;
                if(session.getAttribute("fid") != "" && session.getAttribute("fid") != null){
                    String urlQuery = (String)session.getAttribute("fid");
                    String q = urlQuery.split("fid=")[0];
                    String restroID = urlQuery.split("fid=")[1];
                    session.setAttribute("restroID", restroID);
                    if(q.contains("user_feedback.jsp")){
                        response.sendRedirect("../userzone/user_feedback.jsp");
                    } else if(q.contains("user_review.jsp")) {
                        response.sendRedirect("../userzone/user_review.jsp");
                    }
                }
                
                response.sendRedirect("../userzone/user_dashboard.jsp");
            } else if (userType.equals("admin")) {
                session.setAttribute("user_id", id);
                response.sendRedirect("../adminzone/adminhome.jsp");
            }
        } 
        else {
            out.print("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");
        }
    
    } catch (Exception e) {
    }
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>