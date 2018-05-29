<%@page import="MyPackage.CaptchaGenerator"%>
<html>
    <head>
        <title>Registration|RF</title>
        <link href="images/fav.png" rel="icon" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style1.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js" ></script>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" ></script>
        <script src="js/validation.js" type="text/javascript"></script>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>

        <script>

        </script>
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

        <div class="col-sm-12 registration" style="height: 350px;background-color: white ">
            <div class="row">
                <div class="col-sm-12 reg_img" style="min-height: 800px;background-image: url('images/restro.jpg');background-size: cover;background-repeat: no-repeat">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6 reg_form" style="min-height: 680px;background-color: #f3f3f3;margin-top: 20px;
                             margin-bottom: 20px;border-radius: 10px;opacity: 0.9">
                            <div class="col-sm-12 form_heading text-center" >
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-center" style="margin-top: 10px; margin-bottom: 50px; margin-left: -50px; color: #cc66ff" >Registration Form</div>

                                </div>
                            </div>
                            <form class="form-horizontal" action="code/customer_registrationcode.jsp" id="form_id" onsubmit="validateForm()" method="post" >
                                <div class="form-group">
                                    <label class="control-label col-sm-2 " for="name" style="color:#cc66ff">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" onblur="validateName()" class="form-control" minlength="3"  maxlength="100"  id="name" name="customername" placeholder="Enter your name" required />
                                        <span id="customername" style="color: red"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="gender" style="color:#cc66ff">Gender</label>
                                    <div class="col-sm-10">
                                        <label class="radio-inline"><input type="radio" value="male" name="gender" required>Male</label>
                                        <label class="radio-inline"><input type="radio" value="female"  name="gender" required>Female</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="number" style="color:#cc66ff">Contact No</label>
                                    <div class="col-sm-10">
                                        <input type="number" onblur="validateNumber()"  class="form-control" onblur="validateNumber()" id="number" name="contactno" placeholder="Enter your contact number" required/>
                                        <span id="spanNumber" style="color:red"></span>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="address" style="color:#cc66ff">Address</label>
                                    <div class="col-sm-10">
                                        <textarea placeholder="Enter address here" style="resize: none;" onblur="validateAddress()"  id="address" name="address" rows="3" class="form-control" required></textarea>
                                        <span id="spanAddress" style="color:red"></span>
                                    </div>
                                </div>	

                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="city" style="color:#cc66ff">City</label>
                                    <div class="col-sm-10">
                                        <input type="text"  onblur="validateCity()"  class="form-control" id="city" name="city" placeholder="Enter your city" required>
                                        <span id="spanCity" style="color:red"></span>
                                    </div>
                                </div>	
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="state" style="color:#cc66ff">State</label>
                                    <div class="col-sm-10">
                                        <input type="text" onblur="validateState()"  class="form-control" id="state" name="state" placeholder="Enter your state" required>
                                        <span id="spanState" style="color:red"></span>
                                    </div>
                                </div>	
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="zipcode" style="color:#cc66ff">Zipcode</label>
                                    <div class="col-sm-10">
                                        <input type="text" onblur="validateZipCode()"  class="form-control" id="zipcode" name="zipcode" placeholder="Enter your zipcode" required>
                                        <span id="spanZip" style="color:red"></span>
                                    </div>
                                </div>	


                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="email" style="color:#cc66ff">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" onblur="validateEmail()"  class="form-control" id="emailaddress" name="emailaddress" placeholder="Enter your email id" required/>
                                        <span id="spanEmail" style="color:red"></span>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="pwd" style="color:#cc66ff">Password</label>
                                    <div class="col-sm-10"> 
                                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password" required="77">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2 " for="capcode" style="color:#cc66ff">Captcha</label>
                                    <div class="col-sm-10">
                                        <%
                                            CaptchaGenerator c = new CaptchaGenerator();
                                            String capcode = c.captchaCode();
                                        %>
                                        <h4><strike style="color:black" oncopy="return false" onpaste="return false" ><%=capcode%></strike></h4>
                                        <input type="hidden" oncopy="return false" onpaste="return false" name="capcode" value='<%=capcode%>' required/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2 " for="captcha" style="color:#cc66ff">Enter Captcha </label>
                                    <div class="col-sm-10">
                                        <input type="text" oncopy="return false" onpaste="return false" class="form-control" id="captcha" name="captcha" required />
                                    </div>
                                    <div>  
                                        <div class="col-sm-12" style="min-height: 30px;"></div>	
                                        <div class="form-group text-center"> 
                                            <div class="col-sm-offset-2 col-sm-9">
                                                <button type="submit" id="submit" class="btn" style="color: white; background-color: #cc66ff">Submit</button>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="col-sm-3"></div>
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