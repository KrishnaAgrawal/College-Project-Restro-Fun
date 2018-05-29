
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8; initial-scale-1; user-scalable=no">
        <title>Restro Fun</title>
        <link href="../images/fav.png" rel="icon" />
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <link href="../css/style1.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>

        <script>
            function openNewWin() {
                window.open("");
            }
        </script>


        <style>
            input::placeholder{
                text-align: center;
            }
        </style>

    </head>
    <body>
        <div class="col-sm-12 header">
            <div class="row">
                <div class="col-sm-2 logo hidden-xs hidden-sm">
                    <div class="row">
                        <img src="../images/logo_1.jpg" style="width:100%;height:120px;"/>
                    </div>	
                </div>
                <div class="col-sm-8 title"><span style="font-size: 4em;font-weight: bold;font-family: monospace;text-shadow: 2px 1px 1px black; ">Restro Fun</span></div>
                <div class="col-sm-2 contact">
                    <div class="row  " style="color: #cc66ff">
                        <p>ph: +91 8285889083</p>
                        <p>fax: +91 7985521731</p>
                        <p>alt: +91 8588047303</p>
                    </div>
                </div>
            </div> 
        </div>
  
        <!--menu-->
        <div class="col-sm-12 menu" style="background-color: #cc66ff">
        
            <ul class="nav nav-pills  nav-justified ">
                <li role="#" ><a href="adminhome.jsp">Home</a></li>
                <li role="presentation"><a href="add-restro.jsp">Add Restro</a></li>
                <li role="presentation"><a href="manage-restro.jsp">Manage Restro</a></li>
                <li class="dropdown" role="presentation">
                    <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Manage Users <span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: #cc66ff">
                        <li><a href="user_management.jsp">Users Management</a></li>
                        <li><a href="user_feedback_management.jsp">User Feedback Management</a></li>
                        <li><a href="user_review_management.jsp">User Review Management</a></li>
                        
                        
                    </ul>
                </li>
                <li class="dropdown" role="presentation">
                    <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Settings <span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: #cc66ff">
                        <li><a href="change-password.jsp">Change Password</a></li>
                        <li><a href="../userzone/logout.jsp">Logout</a></li>
                        
                    </ul>
                </li>
                </ul>
                
       
    </div>

        <div id="main" >
            <%
                if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null) {
                    response.sendRedirect("../login.jsp");
                }
            %>

        </div>
        
        <!--body of change password-->
        <div class="col-sm-12" >
            <div class="col-sm-12">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
                    <div class="col-sm-12 login_heading text-center" style="padding-top: 50px;">Change Password</div>
                    <hr>
                    <form class="form-horizontal" action="admincode/change-password-code.jsp" method="post">

                        <div class="col-sm-12" style="min-height: 50px;"></div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="email" style="color: #cc66ff">Old Password</label>
                            <div class="col-sm-8 text-left">
                                <input type="text" class="form-control" id="uname" name="oldPassword" placeholder="Enter your Old Password"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="pwd" style="color: #cc66ff">New Password</label>
                            <div class="col-sm-8"> 
                                <input type="password" class="form-control" id="pwd" name="newPassword" placeholder="Enter New Password">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="pwd" style="color: #cc66ff">Re-Enter New Password</label>
                            <div class="col-sm-8"> 
                                <input type="password" class="form-control" id="pwd" name="reEnterPassword" placeholder="Re-Enter New Password">
                            </div>
                        </div>
                        
                        <br />
                        <div class="form-group text-center"> 
                            <div class="col-sm-offset-2 col-sm-9">
                                <button type="submit" class="btn" style="background-color: #cc66ff; color: white">Submit</button>
                            </div>
                        </div>
                        <!--<span style="margin-left: 47%;"><a href="ForgetPasswordInfo.jsp" style="color: #cc66ff">Forget Password ?</a></span>--> 
                    </form>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
        
        <div class="col-sm-12 footer" style="min-height: 100px; margin-top: 6.8%;">
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
                                        <div class="col-sm-4 text-center"><p style="font-size: 15px;color: white; padding-top: 20px; margin-left: 0%;"><b>Also on</b></p></div>
                                        <div class="col-sm-4"></div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="row">  
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4 text-center">
                                            <a href="http://www.twitter.com" data-toggle="tooltip" title="Twitter" ><span class="fa fa-twitter-square" style="font-size:30px;"></span></a>
                                            <a href="http://www.facebook.com"><span class="fa fa-facebook-square" style="font-size:30px;" title="Facebook"></span></a>
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
        <div id="last"></div>
    </body>
</html>