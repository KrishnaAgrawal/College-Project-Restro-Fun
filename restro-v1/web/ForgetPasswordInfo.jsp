<%-- 
    Document   : forgetPassword
    Created on : Aug 27, 2017, 6:21:42 PM
    Author     : Aaditya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RestroFun</title>
        <link href="images/fav.png" rel="icon" />
        <link href="css/style1.css" rel="stylesheet" type="text/css"
    <a href="fonts/FontAwesome.otf"></a>
    <a href="fonts/fontawesome-webfont.eot"></a>
    <a href="fonts/fontawesome-webfont.svg"></a>
    <a href="fonts/fontawesome-webfont.woff2"></a>
    <a href="fonts/fontawesome-webfont.woff"></a>
    <a href="fonts/glyphicons-halflings-regular.eot"></a>
    <a href="fonts/glyphicons-halflings-regular.svg"></a>
    <a href="fonts/glyphicons-halflings-regular.ttf"></a>
    <a href="fonts/glyphicons-halflings-regular.woff"></a>
    <a href="fonts/fontawesome-webfont.ttf"></a>
    <a href="fonts/glyphicons-halflings-regular.woff2"></a>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <script src="js/validation.js" type="text/javascript"></script>

<!--    <style>
        .txt{
            border-radius: 0px;
        }

        input[type="password"]{
            border-radius: 0px;
            border: 2px solid gray;
        }

        input[type="submit"]{
            margin-left: 0px;
            border: 2px solid gray;
        }

        .txt:focus{
            box-shadow: 0 0 10px 10px #dadada;
        }


        .t{
            font-size: 25px;
            font-weight: bold;
        }

        .txt{
            border: 5px solid #dadada;
        }

        input::placeholder{
            text-align: center;
        }

        textarea::placeholder{
            text-align: center;
            padding-top: 25px;
            font-size: 22px;
            font-weight: bold;
        }


        input[type="text"]{
            height: 40px;
            width: 250px;
            margin-bottom: 10px;
            margin-top: 50px;
            font-size: 22px;
            text-align: center;
        }

        input[type="radio"]{
        }

        input[type="password"]{
            height: 40px;
            width: 250px;
            margin-left: 0px;
            margin-bottom: 20px;
            font-size: 22px;
            text-align: center;
        }

        input[type="number"]{
            height: 40px;
            width: 250px;
            margin-left: 0px;
            margin-bottom: 20px;
            margin-top: 20px;
            font-size: 22px;
            text-align: center;
        }

        input[type="email"]{
            height: 40px;
            width: 250px;
            margin-left: 0px;
            font-size: 22px;
            text-align: center;
        }

        input[type="submit"]{
            height: 50px;
            margin-left: 50px;
            margin-top: 40px;
            margin-bottom: 20px;
            border-radius: 20px;
            font-size: 22px;
            text-align: center;
            color: darkblue;
        }

        input[type="button"]{
            height: 50px;
            width: 260px;
            margin-left: 50px;
            margin-top: 15px;
            margin-bottom: 20px;
            border-radius: 20px;
            font-size: 22px;
            text-align: center;
            color: darkblue;
            border: 2px solid gray;
        }


    </style>-->



</head>
<body>


    <div class="col-sm-12 header">
        <div class="row">
            <div class="col-sm-2 logo hidden-xs hidden-sm">
                <div class="row">
                    <img src="images/logo_1.jpg" style="width:100%;height:120px;"/>
                </div>	
            </div>
            <div class="col-sm-8 title"><span style="font-size: 4em;font-weight: bold;font-family: monospace;text-shadow: 2px 1px 1px black;">Restro Fun</span></div>
            <div class="col-sm-2 contact">
                <div class="row  "style="color: #cc66ff;">
                    <p>ph: +91 8285889083</p>
                    <p>fax: +91 7985521731</p>
                    <p>alt: +91 8588047303</p>
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


    <div id="" style=" background-size: cover;background-repeat: no-repeat; margin-bottom: 20px;">


        <div class="col-sm-12 login">
            <div class="row">
                <div class="col-sm-12 ">
                    <div class="row">

                        <div class="col-sm-5 login_img">
                            <div class="row">
                                <img src="images/img11.jpg" style="width:100%;height:500px;"/>
                            </div>	
                        </div>

                        <div class="col-sm-7 login_form" style="min-height: 500px;">

                            <div class="col-sm-12 login_heading text-center" style="padding-top: 50px;">Recover Old Password</div>
                            <hr>

                            <form class="form-horizontal" action="code/forgetPassword.jsp" method="post">

                                <div class="col-sm-12" style="min-height: 80px;"></div>

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="email" style="color: #cc66ff">Name</label>
                                    <div class="col-sm-8 text-left">
                                        <input type="text" onblur="validateName()" class="form-control" id="name" name="name" placeholder="Enter your name" required/>
                                        <span id="customername" style="color: red"></span>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="email" style="color: #cc66ff">Phone</label>
                                    <div class="col-sm-8 text-left">
                                        <input type="text" onblur="validateNumber()" class="form-control" id="number" name="number" placeholder="Enter your phone number" required/>
                                        <span id="spanNumber" style="color: red"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="pwd" style="color: #cc66ff">Email</label>
                                    <div class="col-sm-8"> 
                                        <input type="email" onblur="validateEmail()" class="form-control" id="pwd" name="email" placeholder="Enter your email" required>
                                    </div>
                                </div>


                                <div class="form-group text-center"> 
                                    <div class="col-sm-offset-2 col-sm-9">
                                        <button type="submit" class="btn" id="submit" style="background-color: #cc66ff; color: white">Submit</button>
                                    </div>
                                </div>
                                
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


    </div>

</body>
</html>
