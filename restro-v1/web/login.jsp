<html>
    <head>
        <title>Restro Fun</title>
        <link href="images/fav.png" rel="icon" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <script src="js/validation.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="col-sm-12 header">
            <div class="row">
                <div class="col-sm-2 logo">
                    <div class="row">
                        <a href="index.jsp" ><img src="images/logo_1.jpg" style="width:100%;height:120px;"/></a>
                    </div>	
                </div>
                <div class="col-sm-8 title"><span style="font-size: 4em;font-weight: bold;font-family: monospace;text-shadow: 2px 1px 1px black;">Restro Fun</span></div>
                <div class="col-sm-2 contact">
                    <div class="row hidden-sm hidden-xs " style="color: #cc66ff">
                        <p>ph: +91 8285889083</p>
                        <p>fax: +91 7985521731</p>
                        <p>alt: +91 11 26462825</p>
                    </div>
                </div>
            </div> 
        </div>

        <div class="col-sm-12 menu" style="background-color: #cc66ff">
            <div class="col-sm-12">
                <ul class="nav nav-pills  nav-justified ">
                    <li role="presentation" ><a href="index.jsp">Home</a></li>
                    <li role="presentation"><a href="about.jsp">About Us</a></li>
                    <li role="presentation"><a href="registration.jsp">Registration</a></li>
                    <li role="presentation"><a href="enquiry.jsp">Enquiry</a></li>
                    <li role="presentation"><a href="login.jsp">Login</a></li>
                    <li role="presentation"><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
        <%
            String q = (String)session.getAttribute("q");
            session.setAttribute("q", q);
            String fid = (String)session.getAttribute("fid");
            session.setAttribute("fid", fid);
            String restro_id = (String)session.getAttribute("restro_id");
            session.setAttribute("restro_id", restro_id);
        %>

        <div class="col-sm-12 login">
            <div class="row">
                <div class="col-sm-12 ">
                    <div class="row">

                        <div class="col-sm-5 login_img">
                            <div class="row">
                                <img src="images/img11.jpg" style="width:100%;height:500px;"/>
                            </div>	
                        </div>

                        <div class="col-sm-7 login_form">

                            <div class="col-sm-12 login_heading text-center" style="padding-top: 50px;">Secure  Login</div>
                            <hr>

                            <form class="form-horizontal" action="code/logincode.jsp" method="post">

                                <div class="col-sm-12" style="min-height: 80px;"></div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="email" style="color: #cc66ff">Email/Phone</label>
                                    <div class="col-sm-8 text-left">
                                        <input type="text" onblur="validateUsername()" class="form-control" id="uname" name="username" placeholder="Enter your username" required/>
                                        <span id="spanUsername" style="color: red"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="pwd" style="color: #cc66ff">Password</label>
                                    <div class="col-sm-8"> 
                                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password" required>
                                    </div>
                                </div>


                                <div class="form-group text-center"> 
                                    <div class="col-sm-offset-2 col-sm-9">
                                        <button type="submit"id="submit" class="btn" style="background-color: #cc66ff; color: white">Submit</button>
                                    </div>
                                </div>
                                <span style="margin-left: 47%;"><a href="ForgetPasswordInfo.jsp" style="color: #cc66ff">Forget Password ?</a></span> 
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <div class="col-sm-12 footer" style="min-height: 100px;;">
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