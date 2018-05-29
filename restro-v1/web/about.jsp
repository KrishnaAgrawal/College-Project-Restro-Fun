<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyPackage.CaptchaGenerator"%>
<html>
    <head>
        <title>Restro Fun</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="images/fav.png" rel="icon" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style1.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js" ></script>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" ></script>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
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
                    <div class="row hidden-sm hidden-xs " style="color: #cc66ff;">
                        <p>ph: +91 8285889083</p>
                        <p>fax: +91 7985521731</p>
                        <p>alt: +91 11 26462825</p>
                    </div>
                </div>
            </div> 
        </div>

        <div class="col-sm-12 menu" style="background-color: #cc66ff;margin-bottom: 20px;">

            <ul class="nav nav-pills  nav-justified ">
                <li role="presentation" ><a href="index.jsp">Home</a></li>
                <li role="presentation"><a href="about.jsp">About Us</a></li>
                <li role="presentation"><a href="registration.jsp">Registration</a></li>
                <li role="presentation"><a href="enquiry.jsp">Enquiry</a></li>
                <li role="presentation"><a href="login.jsp">Login</a></li>
                <li role="presentation"><a href="contactus.jsp">Contact Us</a></li>
            </ul>


        </div>

        <div class="container-fluid about_us_box" style="min-height: 1000px;
             background-color:#f3f3f3;">
            <div class="container" style="min-height: 1000px;background-color:#f3f3f3;margin-bottom: 20px;border-radius: 10px;">
                <div class="row">
                    <div class="col-sm-12 about_us_img" style="min-height: 100px;">
                        <img src="images/food.jpg" style="width:100%;min-height: 100px;"/>
                        <div class="centered text-center" style="position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);font-size: 55px;color: white;">Our mission is to ensure
                            nobody has a bad meal.</div>
                    </div>
                </div>

                <div class="text-center col-sm-12" style="background-color:white;">
                    <h2><b>We do this by</b></h2>
                </div>

                <div class="text-center col-sm-12" style="background-color:white;">
                    <h3><b>Helping people discover great places around them.</b></h3>
                    <p style="font-size:20px;">Our team gathers information from every restaurant on a regular basis to ensure our data is fresh. Our vast community of 
                        food lovers share their reviews and photos, so you have all that you need to make an informed choice.</p>
                </div>

                <div class="text-center col-sm-12" style="background-color:white;">
                    <h3><b>Building amazing experiences around dining.</b></h3>
                    <p style="font-size:20px;">Starting with information for over 1 hundred restaurants (and counting), 
                        we're making dining smoother and more enjoyable with services.</p>
                </div>

                <div class="text-center col-sm-12" style="background-color:white;">
                    <h3><b>Enabling restaurants to create amazing experiences.</b></h3>
                    <p style="font-size:20px;">With dedicated engagement and management tools, we're enabling restaurants 
                        to spend more time focusing on food itself, which translates directly to better dining experiences.</p>
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