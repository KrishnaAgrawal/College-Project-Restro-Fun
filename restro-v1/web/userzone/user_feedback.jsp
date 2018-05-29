<%@page import="MyPackage.CaptchaGenerator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Feedback|RF</title>
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

        <div class="col-sm-12 main" style="min-height: 500px;background-color:  #337ab7;">
            <div class="row"> 
                <div class="col-sm-5 feed_img" style="min-height: 500px;background-color:  #337ab7;background-image: url('../images/feedbackimg.jpg'); background-repeat:no-repeat;background-size:cover;"></div>
                <div class="col-sm-7 feedback" style="min-height: 500px;background-color:  white;">
                    <div class="col-sm-12" style="min-height:50px;"></div>
                    <div class="col-sm-12 feedback_title text-center">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10">
                            <h2>Share Your Feedback With Us</h2>
                            <p>We would love to share your thoughts,concerns or problems so we can improve.</p>
                            <hr>
                        </div>
                        <div class="col-sm-1"></div>
                    </div>
                    <div class="col-sm-12" style="min-height:60px;"></div>
                    <div class="col-sm-12 chngpwd_form">

                        <form class="form-horizontal" action="usercode/feedback_code.jsp" method="post">

                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-8">
                                    <label class="control-label col-sm-5" for="feed_type">Feedback Type</label>
                                    <div class="col-sm-7">
                                        <label class="radio-inline"><input type="radio" name="feed_type">Comments</label>
                                        <label class="radio-inline"><input type="radio" name="feed_type">Questions</label>
                                    </div>
                                </div>
                                <div class="col-sm-2"></div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-8">
                                    <label class="control-label col-sm-5 " for="desc_feed">Describe Feedback</label>
                                    <div class="col-sm-7">
                                        <textarea class="form-control" rows="5" style="resize: none;" id="address" name="desc_feed" placeholder="Give Your Feedback"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-2"></div>
                            </div>

                            <div class="form-group text-center"> 
                                <div class="col-sm-2"></div>
                                <div class=" col-sm-8">
                                    <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Submit</button>
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                        </form>

                    </div>
                </div>
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
%>