<%-- 
    Document   : adminzone
    Created on : Jul 28, 2017, 10:39:48 AM
    Author     : Aaditya
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elmech Engineers</title>
        <link href="../images/favicon.png" rel="icon" />
        <link href="../UserZone/css/userHome.css" rel="stylesheet" type="text/css"
        <a href="../fonts/FontAwesome.otf"></a>
    <a href="../fonts/fontawesome-webfont.eot"></a>
    <a href="../fonts/fontawesome-webfont.svg"></a>
    <a href="../fonts/fontawesome-webfont.woff2"></a>
    <a href="../fonts/fontawesome-webfont.woff"></a>
    <a href="../fonts/glyphicons-halflings-regular.eot"></a>
    <a href="../fonts/glyphicons-halflings-regular.svg"></a>
    <a href="../fonts/glyphicons-halflings-regular.ttf"></a>
    <a href="../fonts/glyphicons-halflings-regular.woff"></a>
    <script src="../js/jquery-2.1.0.min.js" type="text/javascript"></script>
    <a href="../fonts/fontawesome-webfont.ttf"></a>
    <a href="../fonts/glyphicons-halflings-regular.woff2"></a>
    <script src="../js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="../js/jquery.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="../js/wow.js" type="text/javascript"></script>
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    
    <style>
        .txt:hover{
            box-shadow: 0 0 2px 2px gray;
        }
        
        .txt:focus{
            box-shadow: 0 0 5px 5px gray;            
        }
        
        input::placeholder{
            color: skyblue;
            text-align: center;
        }
        
        textarea::placeholder{
            color: skyblue;
            text-align: center;
            font-weight: normal;
        }
        
        
    </style>
    
    </head>
  <body style="background: azure;">
      <form action="../upload" method="post" enctype="multipart/form-data" >
            <div id="warpper" style="min-height: 800px;">
            <div id="header" >
                <div id="logo" >
                    <img src="../images/Final_Logo.png"/>
                </div>
                <div id="banner" >
                    <p style="color: #ff6600;font-size: 80px;font-weight: bold;font-family: monospace;text-shadow: 2px 1px 1px black; position: relative;left:20px;top:33px;">Elmech Engineers</p>
                            <br/><a href="http://www.facebook.com"><span class="fa fa-facebook-square" style="color:blue;font-size:30px;position: relative;left: 760px;top:-70px;"></span></a>
                            <a href="http://www.youtube.com"><span class="fa fa-youtube-square" style="color:red;font-size:30px;position: relative;left: 760px;top:-70px;"></span></a>
                            <a href="http://www.linkedin.com"><span class="fa fa-linkedin" style="color: blue;font-size:30px;position: relative;left: 760px;top:-70px;"></span></a>
                            <a href="http://www.twitter.com"><span class="fa fa-twitter-square" style="color:lightskyblue;font-size:30px;position: relative;left: 760px;top:-70px;"></span></a>
                            <span class="fa fa-phone" style="color: #ff6600;font-size:20px;position: relative;left: 620px;top:-30px;">+91 9919276988</span>
                            <br /><span class="fa fa-phone" style="color: #ff6600;font-size:20px;position: relative;left: 740px;top:-20px;">+91 9919276988</span>
                    
                </div>
            </div>
            
            
            <div class="col-sm-12 menu" style="background: skyblue;">
                <ul class="nav nav-pills  nav-justified">
                    <li role="presentation" ><a href="adminhome.jsp" style="font-size: 16px;">Home</a></li>
                    <li role="presentation"><a href="userManagement.jsp" style="font-size: 16px;">User Management</a></li>
                    <li class="dropdown" role="presentation">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Response<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="background-color: skyblue">
                                <li><a href="enquiryManagement.jsp" style="font-size: 16px;">Enquiry</a></li>
                                <li><a href="feedbackManagement.jsp" style="font-size: 16px;">Feedback</a></li>
                                <li><a href="complainManagement.jsp" style="font-size: 16px;">Complain</a></li>
                                <li><a href="reviewManagement.jsp" style="font-size: 16px;">Review</a></li>
                            </ul>
                    </li>
                    
                    <li role="presentation"><a href="productupload.jsp" style="font-size: 16px;">Upload</a></li>
                    <li class="dropdown" role="presentation">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Setting<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="background-color: skyblue">
                                <li><a href="viewUpload.jsp" style="font-size: 16px;">View Upload</a></li>
                                <li><a href="adminChangePassword.jsp" style="font-size: 16px;">Change Password</a></li>
                                <li><a href="../UserZone/logout.jsp" style="font-size: 16px;">Logout</a></li>
                            </ul>
                    </li>
                    </ul>
            </div>

            
         <div id="main" >
                    <%
                        if(session.getAttribute("adminID")=="" || session.getAttribute("adminID")==null){
                            response.sendRedirect("../login.jsp");
                        }
                    %>
                    
                    <table>
                        <tr>
                            <td style="padding-top: 40px; font-size: 16px;">Product: </td>
                            <td><input type="text" name="pname" class="txt" style="color:black; border-radius: 10px;" required placeholder="Product Name" /></td>
                        </tr>
                        <tr>
                            <td style="font-size: 16px;">Description:</td>
                            <td><textarea name="description" rows="4" cols="25"  class="txt" required placeholder="Description" style=" border-radius: 10px;resize: none;"></textarea></td>
                        </tr>
                        <tr>
                            <td style="font-size: 16px;">Price:</td>
                            <td><input type="number" name="price" required class="txt" style="color:black; border-radius: 10px; " placeholder="Price" /></td>
                        </tr>
                        <tr>
                            <td style="font-size: 16px;">Upload File:</td>
                            <td><input type="file" name="file" required  class="txt"  style="border: none; border-radius: 10px;"/></td>
                        </tr>
                        <tr style="font-size: 16px;">
                            <td colspan="2" align="center"><input type="Submit" required  class="txt" value="Upload" style=" border-radius: 10px;"/></td>
                        </tr>
                    </table>
        </div>
                    
                    
        <div id="footer">
            <div class="f_bg">
                <div id="lsubfooter">
                    Copyright &copy; to Elmech Engineers
                </div>
            </div>
            <div class="f_bg">
                <div id="rsubfooter">
                    Developed by: Shree Krishna Agrawal<br/>8285889083<br/><a href="https://mail.google.com/mail/u/0/#inbox?compose=new" style="color: #2098d1; text-decoration: none;">shreekrishnaagrawal@gmail.com</a>
                </div>
            </div>
        </div> 
                </div>
        <div id="last"></div>