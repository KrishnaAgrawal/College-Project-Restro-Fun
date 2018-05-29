<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Change Password|RF</title>
        <link href="../images/fav.png" rel="icon" />
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style1.css" rel="stylesheet" type="text/css">
        <link href="userzone/css/userStyle.css" rel="stylesheet" type="text/css">
        <script src="../js/jquery-3.2.1.min.js" ></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" ></script>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null)
                response.sendRedirect("../login.jsp");
            else {
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

    <center>
        <div class="col-sm-12 main" style="min-height: 500px;;background-image: url('images/chng-pwd-img.jpg');background-size: cover;background-repeat:no-repeat ">
            <div class="row center-block">

                <div class="col-sm-3" style=" " ></div>
                <div class="col-sm-6  chngpwd" style="display: inline-block;background-color: #f3f3f3;margin-top:10px;margin-bottom: 10px;
                     min-height: 500px;border-radius: 10px;opacity: 0.9;">
                    <div class="col-sm-12" style="min-height:50px;"></div>
                    <div class="col-sm-12 chngpwd_title">
                        <h2 class="text-center chg_pwd_heading" style="color:#cc66ff;">Change Your Password</h2><hr>
                    </div>
                    <div class="col-sm-12" style="min-height:60px;"></div>
                    <div class="col-sm-12 chngpwd_form">

                        <form class="form-horizontal" action="usercode/change_password_code.jsp" method="post">
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="old_pwd" style="color:#cc66ff;">Old Password</label>
                                <div class="col-sm-8"> 
                                    <input type="password" required class="form-control" id="old_pwd" name="old_pwd" placeholder="Enter old password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3" for="new_pwd" style="color:#cc66ff;">New Password</label>
                                <div class="col-sm-8"> 
                                    <input type="password" required class="form-control" id="new_pwd" name="new_pwd" placeholder="Enter new password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3" for="cnfrm_pwd" style="color:#cc66ff;">Confirm Password</label>
                                <div class="col-sm-8"> 
                                    <input type="password" required class="form-control" id="cnfrm_pwd" name="cnfrm_pwd" placeholder="Enter confirm password">
                                </div>
                            </div>               


                            <div class="form-group text-center"> 
                                <div class="col-sm-1"></div>
                                <div class=" col-sm-10">
                                    <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Change Password</button>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                        </form>        
                    </div>    
                </div>
                <div class="col-sm-3" style="" ></div>
            </div>
        </div>
    </center>

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