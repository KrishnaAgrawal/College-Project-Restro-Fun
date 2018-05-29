<%-- 
    Document   : restaurantupload
    Created on : Dec 2, 2017, 6:52:28 PM
    Author     : Shree Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Upload | RF</title>
        <link href="../images/logo_1.jpg" rel="icon" />
        <link href="../css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<a href="../fonts/FontAwesome.otf"></a>
<a href="../fonts/fontawesome-webfont.eot"></a>
<a href="../fonts/fontawesome-webfont.svg"></a>
<a href="../fonts/glyphicons-halflings-regular.eot"></a>
<a href="../fonts/glyphicons-halflings-regular.svg"></a>
<a href="../fonts/fontawesome-webfont.woff2"></a>
<a href="../fonts/glyphicons-halflings-regular.woff"></a>
<a href="../fonts/glyphicons-halflings-regular.woff2"></a>
<a href="../fonts/glyphicons-halflings-regular.ttf"></a>
<a href="../fonts/fontawesome-webfont.woff"></a>
<a href="../fonts/fontawesome-webfont.ttf"></a>
<script src="../js/jquery.js" type="text/javascript"></script>
<link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
<link href="../css/style1.css" rel="stylesheet" type="text/css"/>
<script src="../js/wow.js" type="text/javascript"></script>
<script src="../js/wow.min.js" type="text/javascript"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="../js/bootstrap.min.js" type="text/javascript"></script>
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
 
 <div class="col-sm-12 menu" style="background-color: #cc66ff">
     <nav>
     <ul class="nav nav-pills  navbar-nav navbar-left ">
                    <li role="presentation" ><a href="#">Home</a></li>
<!--                    <li role="presentation"><a href="about.jsp">About Us</a></li>-->
                    <li role="presentation"><a href="#">Registration</a></li>
                    <!--<li role="presentation"><a href="enquiry.jsp">Enquiry</a></li>-->
                    <li role="presentation"><a href="#">Login</a></li>
                    <!--<li role="presentation"><a href="contactus.jsp">Contact Us</a></li>--> 
                    <li>
                        <form action="#" method="post" class="navbar-form navbar-left" role="search" style="text-align: right">
                            <div class="form-group">
                                <input type="text" name="search" class="form-control" placeholder="Search Your Choice" style="width: 150%;">
                            </div>
                            <button type="submit" class="btn btn-default" style="margin-left: 100px;">Submit</button>
                        </form>
    </ul>
     </nav>
 </div>
 
        <div class="col-sm-12">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="col-sm-12">
                    <div class="col-sm-12 form_heading text-center" >
                        <div class="row">
                       <div class="col-sm-3"></div>
                            <div class="col-sm-9 text-center" style="margin-top: -1%; margin-bottom: 0%; margin-left: -20px; color: #cc66ff; font-size: .5em;" >Upload</div>
                        </div>
                    </div>
                    <form class="form-horizontal" action="#" method="post">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Name:</span></label>
                            <div class="col-sm-8">
                                <input text="text" class="form-control" name="name" id="name" value="" placeholder="Enter Restaurant Name" maxlength="50" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant ID:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="id" id="id" value="" placeholder="Enter Restaurant ID" maxlength="50" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Rating:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="rating" id="rating" value="" placeholder="Enter Restaurant Rating" maxlength="5" required="true" />
                            </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Location:</span></label>
                            <div class="col-sm-8">
                                <input type="text"class="form-control" name="location" id="location" value="" placeholder="Enter Restaurant Location" maxlength="300" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Theme:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="theme" id="theme" value="" placeholder="Enter Restaurant Theme" maxlength="20" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Foods:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="food" id="food" value="" placeholder="Enter Restaurant Food" maxlength="30" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Contact:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="contact" id="contact" value="" placeholder="Enter Restaurant Contact" maxlength="10" required="true" />
                                <span style="color: red; font-size: 11px;"> *</span><span style="color: red; font-size: 11px;">Enter your contact without any code. E.g. 9876543210</span>
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Facilities:</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="facility" id="facility" value="" placeholder="Enter Restaurant Facility" maxlength="100" required="true" />
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name"><span style="color: #cc66ff; font-weight: bold;">Restaurant Foods:</span></label>
                            <div class="col-sm-8">
                                <input type="text"class="form-control" name="food" id="food" value="" placeholder="Enter Restaurant Food" maxlength="30" required="true" />
                            </div>
                    </div>
                    <div class="form-group text-center"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Submit</button>
                        </div>
                   </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
        
<div class="col-sm-12 footer" style="min-height: 100px;">
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
                            <a href="https://mail.google.com/mail/u/2/#inbox?compose=new"><span class="fa fa-google-plus" style="font-size:20px;"></span></a>
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
