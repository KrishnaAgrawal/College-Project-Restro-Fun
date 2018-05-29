<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="MyPackage.CaptchaGenerator"%>
<html>
    <head>
        <title>Enquiry|RF</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="images/fav.png" rel="icon" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style1.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js" ></script>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" ></script>
        <script src="js/validation.js" type="text/javascript"></script>
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


        <div class="col-sm-12 menu" style="background-color: #cc66ff">

            <ul class="nav nav-pills  nav-justified ">
                <li role="presentation" ><a href="index.jsp">Home</a></li>
                <li role="presentation"><a href="about.jsp">About Us</a></li>
                <li role="presentation"><a href="registration.jsp">Registration</a></li>
                <li role="presentation"><a href="enquiry.jsp">Enquiry</a></li>
                <li role="presentation"><a href="login.jsp">Login</a></li>
                <li role="presentation"><a href="contactus.jsp">Contact Us</a></li>
            </ul>


        </div>

        <div class="col-sm-12 enquiry">
            <div class="row">
                <div class="col-sm-12" style="width: 100%;min-height: 500px;background-color:#f3f3f3;background-image: url('images/ques-mark-2.jpg') ;
                     background-size: cover;background-repeat: no-repeat;">
                    <div class="row">

                        <div class="col-sm-2 " ></div>
                        <div class="col-sm-8 enquiry_form" style="margin-top: 20px;margin-bottom: 20px;border-radius: 10px;background-color: #f3f3f3;opacity: 0.95">
                            <div class="col-sm-12 enquiry_heading"><h1 style="color:#cc66ff">Enquiry Form</h1></div>
                            <hr>
                            <form class="form-horizontal" action="code/customer_enquirycode.jsp" method="post">
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="name" style="color:#cc66ff">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" onblur="validateName()" class="form-control" id="name" name="name" placeholder="Enter your name">
                                        <span id="spanName" style="color:red"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="gender" style="color:#cc66ff">Gender</label>
                                    <div class="col-sm-10">
                                        <label class="radio-inline"><input type="radio" value="Male" name="gender">Male</label>
                                        <label class="radio-inline"><input type="radio" value="Female" name="gender">Female</label>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="contactno" style="color:#cc66ff">Contact No</label>
                                    <div class="col-sm-10">
                                        <input type="number" onblur="validateNumber()"  class="form-control" id="number" name="contactno"placeholder="Enter your contact number"/>
                                        <span id="spanNumber" style="color:red"></span>


                                    </div>
                                </div> 

                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="email"style="color:#cc66ff">Email Address</label>
                                    <div class="col-sm-10">
                                        <input type="email" onblur="validateEmail()"  class="form-control" id="emailaddress" name="emailaddress" placeholder="Enter your email id" />
                                        <span id="spanEmail" style="color:red"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="message" style="color:#cc66ff">Your Query</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" style="resize: none;"  onblur="validateAddress()"  rows="5" id="query" name="query" placeholder="Enter your query / message" style="resize: vertical"></textarea>
                                        <span id="spanAddress" style="color:red"></span>
                                    </div>
                                </div>


                                <div class="form-group text-center"> 
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Submit</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="col-sm-2"></div>
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