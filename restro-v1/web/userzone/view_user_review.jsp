<%@page import="MyPackage.CaptchaGenerator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Review|RF</title>
        <link href="../images/fav.png" rel="icon" />
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style1.css" rel="stylesheet" type="text/css">
        <script src="../js/jquery-3.2.1.min.js" ></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" ></script>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%
            try{
            if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null) {
                String user_id = (String)session.getAttribute("user_id");
                session.setAttribute("user_id", user_id);
                String q = request.getParameter("q");
                session.setAttribute("q", q);
                String fid = request.getParameter("fid");
                session.setAttribute("fid", fid);
                response.sendRedirect("../login.jsp");
                String restro_id = (String)session.getAttribute("restro_id");
                session.setAttribute("restro_id", restro_id);
            } else {
//                out.print(session.getAttribute("id"));
                
//                    out.print(session.getAttribute("id")+"?"+session.getAttribute("user_id"));
        %>
        <div class="col-sm-12 header">
            <div class="row">
                <div class="col-sm-2 logo">
                    <div class="row">
                        <img src="../images/logo_1.jpg" style="width:100%;height:120px;"/>
                    </div>	
                </div>
                <div class="col-sm-8 title"><span style="font-size: 4em;font-weight: bold;font-family: monospace;text-shadow: 2px 1px 1px black;">Restro Fun</span></div>
                <div class="col-sm-2 contact">
                    <div class="row hidden-sm hidden-xs " style="color: #cc66ff;">
                        <p>ph: +91 8285889083</p>
                        <p>fax: +91 7985521731</p>
                        <p>alt: +91 11 26462825</p>
                    </div>
                </div>
            </div> 
        </div>

        <div class="col-sm-12 menu">
            <div class="col-sm-12">
                <ul class="nav nav-pills  nav-justified ">
                    <li role="presentation"><a href="user_dashboard.jsp">Dashboard</a></li>
                    <li role="presentation"><a href="view_user_review.jsp">Show Reviews</a></li>
                    <li class="dropdown" role="presentation">
                        <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Settings <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: #cc66ff">
                            <li role="presentation"><a href="user_edit_profile.jsp">Edit Profile</a></li>
                            <li role="presentation"><a href="user_change_password.jsp">Change Password</a></li>
                            <li role="presentation"><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-sm-12 rvw_form" style="min-height: 400px;">

            <div class="col-sm-12">
                <div class="row"> 
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10 rvw_title">
                        <p style="font-size: 2em; color: #cc66ff; margin-left: 40%; margin-top: 2%"><b>Reviews</b></p>
                    </div>
                    <div class="col-sm-1"></div>
                </div> 
            </div>
            <div class="col-sm-12 review_form">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Restro Name</th>
                        <th>Rating</th>
                        <th>Review</th>
                        <th>Dated</th>
                    </tr>
<%
                ConnectionManager cm  = new ConnectionManager();
                String query = "select distinct restro_name, rating, restro_review_text, date_created from restro_review";
                ResultSet rs = cm.selectQuery(query);
                while(rs.next()){
%>
                    <tr>
                        <td><%=rs.getString("restro_name")%></td>
                        <td><%=rs.getString("rating")%></td>
                        <td><%=rs.getString("restro_review_text")%></td>
                        <td><%=rs.getString("date_created")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>

        </div>

        <div class="col-sm-12 footer" style="min-height: 130px;">
            <div class="row"> 
                <div class="col-sm-4 copyright">
                    <div class="row"> 
                        <div class="col-sm-12 copyI"></div>
                        <div class="col-sm-12 copyII">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 text-center"><p style="font-size: 15px;color: white;padding-top: 20px;">
                                    <b>&copy; Copyright to Restro Fun</b>
                                    <br/>
                                    <b>All Rights Reserved.</b>
                                </p>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="col-sm-12 copyIII"></div>
                    </div>
                </div>
                <div class="col-sm-4 glyph">
                    <div class="row"> 
                        <div class="col-sm-12 glyphI"></div>
                        <div class="col-sm-12 glyphII">
                            <div class="row">  
                                <div class="col-sm-12">
                                    <div class="row">  
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4 text-center"><p style="font-size: 15px;color: white;
                                                                             padding-top: 20px;"><b>Also on</b></p></div>
                                        <div class="col-sm-4"></div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="row">  
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4 text-center">
                                            <a href="http://www.twitter.com"><span class="fa fa-twitter-square" style="font-size:20px;"></span></a>
                                            <a href="http://www.facebook.com"><span class="fa fa-facebook-square" style="font-size:20px;"></span></a>
                                            <a href="http://www.linkedin.com"><span class="fa fa-linkedin-square" style="font-size:20px;"></span></a>
                                        </div>
                                        <div class="col-sm-4"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> 
                </div>
                <div class="col-sm-4 develop">
                    <div class="row">
                        <div class="col-sm-12 developI"></div>
                        <div class="col-sm-12 developII">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-10 text-center">
                                <p style="font-size: 15px;color: white; padding-top: 20px;">
                                    <b>Developed By: Restro Team</b>
                                    <br/>
                                    <b>shreekrishnaagrawal@gmail.com</b>
                                </p>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="col-sm-12 developIII"></div>
                    </div>
                </div>
            </div>
        </div> 

    </body>

</html>
<%
    }
            }
            catch(Exception e){
                out.print("<script>window.location.href='usercode/error.jsp'</script>");
            }
%>