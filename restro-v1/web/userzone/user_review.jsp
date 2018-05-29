
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
            if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null) {
                String user_id = (String)session.getAttribute("user_id");
                session.setAttribute("user_id", user_id);
                String q = request.getParameter("q");
                session.setAttribute("q", q);
                String fid = request.getParameter("fid");
                session.setAttribute("fid", fid);
                String restro_id = (String)session.getAttribute("restro_id");
                session.setAttribute("restro_id", restro_id);
                response.sendRedirect("../login.jsp");
            } else {
                String user_id = (String)session.getAttribute("user_id");
                session.setAttribute("user_id", user_id);
                String q = request.getParameter("q");
                session.setAttribute("q", q);
                String fid = request.getParameter("fid");
                session.setAttribute("fid", fid);
                String restro_id = (String)session.getAttribute("restro_id");
                session.setAttribute("restro_id", restro_id);
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
                    <li role="presentation"><a href="view_user_review.jsp">Show Review</a></li>
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

        <div class="col-sm-12 rvw_img">
            <div class="row">
                <img src="../images/Review.jpg" style="width: 100%;height: 300px;"/>
            </div>   
        </div>  

        <div class="col-sm-12 rvw_form">

            <div class="col-sm-12">
                <div class="row"> 
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10 rvw_title">
                        <p style="font-size: 2em; color: #cc66ff; margin-left: 40%; margin-top: 2%"><b>Give Your Review</b></p>
                    </div>
                    <div class="col-sm-1"></div>
                </div> 
            </div>

            <div class="col-sm-12 review_form">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <form  action="usercode/review_code.jsp" method="post">

                        <div class="form-group">
                            <label for="sel1" ><p>Select the rating</p></label>
                            <select class="form-control" id="sel1" name="rating" class="col-sm-4">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>  

                        <div class="form-group">
                            <label for="reviewtext"><p>Give Your Review</p></label>
                            <textarea class="form-control" rows="5" style="resize: none;"  id="comment" name="reviewtext"></textarea>
                        </div>

                        <div class="form-group text-center" > 
                            <div class="col-sm-offset-2 col-sm-8">
                                <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Submit Review</button>
                            </div>
                        </div>
                    </form>

                </div>           

            </div>

        </div>

        <div class="col-sm-12 footer" style="min-height: 130px; margin-top: 2%">
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
<%    }
%>