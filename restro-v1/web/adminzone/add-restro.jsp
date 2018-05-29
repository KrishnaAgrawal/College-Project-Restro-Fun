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
        <script src="js/admin_validation.js" type="text/javascript"></script>

        <script>
            function openNewWin() {
                window.open("");
            }

            var expanded = false;

            function showCheckboxes() {
                var checkboxes = document.getElementById("checkboxes");
                if (!expanded) {
                    checkboxes.style.display = "block";
                    expanded = true;
                } else {
                    checkboxes.style.display = "none";
                    expanded = false;
                }
            }

        </script>


        <style>
            input::placeholder{
                text-align: center;
            }

            .multiselect {
                width: 200px;
            }

            .selectBox {
                position: relative;
            }

            .selectBox select {
                width: 100%;
                font-weight: bold;
            }

            .overSelect {
                position: absolute;
                left: 0;
                right: 0;
                top: 0;
                bottom: 0;
            }

            #checkboxes {
                display: none;
                border: 1px #dadada solid;
            }

            #checkboxes label {
                display: block;
            }

            #checkboxes label:hover {
                background-color: #1e90ff;
            }
        </style>

    </head>
    <body>
        <!--header-->
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

        <!--Menu-->
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
        <!--body of add restro-->
        <div class="col-sm-12" >
            <div class="col-sm-12">
                <div class="col-sm-12" style="min-height: 100px;">
                    <center>
                        <h2 style="color: #cc66ff;padding-top: 10px;margin-bottom: -100px">Add Restro</h2>
                    </center>
                </div>
                <form class="form-horizontal" action="../upload" method="post" enctype="multipart/form-data">

                    <div class="col-sm-6"style="margin-left: -2.5%">
                        <div class="col-sm-12" style="min-height: 10px;"></div>
                        <!--Name-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="email" style="color: #cc66ff">Restaurant Name</label>
                            <div class="col-sm-8">
                                <input type="text" onblur="validateName()" class="form-control" id="name" name="restaurantName" placeholder="Enter Restaurant Name"/>                         
                                <span id="spanName" style="color:red" ></span>
                            </div>
                        </div>

                        <!--URL-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="pwd" style="color: #cc66ff">URL</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateURL()" class="form-control" id="url" name="URL" placeholder="Enter URL">
                                <span id="spanURL" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Rating-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Rating</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateRating()" class="form-control" id="rating1" name="rating" placeholder="Enter Rating">
                                <span id="spanRating" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Theme 1-->
                        <div class="form-group">
                            <label class="control-label col-sm-4"  style="color: #cc66ff">Theme 1</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateTheme1()" required class="form-control" id="theme1" name="theme1" placeholder="Enter Theme 1">
                                <span id="spanTheme1" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Theme 2-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Theme 2</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateTheme2()" required class="form-control" id="theme2" name="theme2" placeholder="Enter Theme 2">
                                <span id="spanTheme2" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Theme 3-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Theme 3</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateTheme3()"  class="form-control" id="theme3" name="theme3" placeholder="Enter Theme 3">
                                <span id="spanTheme3" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Theme 4-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Theme 4</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateTheme4()" class="form-control" id="theme4" name="theme4" placeholder="Enter Theme 4">
                                <span id="spanTheme4" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Theme 5-->
                        <!--<div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Theme 5</label>
                            <div class="col-sm-8"> 
                                <input type="text" class="form-control" id="pwd" name="theme5" placeholder="Enter Theme 5">
                            </div>
                        </div>-->

                        <!--Special Today-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Special Today</label>
                            <div class="col-sm-8"> 
                                <input type="text"  onblur="validateSpecialToday()" class="form-control" id="specialToday" name="specialToday" placeholder="Enter Special Today">
                                <span id="spanSpecialToday" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Offers and Discounts-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Offers and Discounts</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur=""  class="form-control" id="offersAndDiscounts" name="offersAndDiscounts" placeholder="Enter Offers and Discounts">
                                <span id="" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Contact Number 1-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Contact Number 1</label>
                            <div class="col-sm-8"> 
                                <input type="number" onblur="validateNumber()" class="form-control" id="number" name="contactNumber1" placeholder="Enter Contact Number" style=" resize:none">
                                <span id="spanNumber" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Contact Number 2-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Contact Number 2</label>
                            <div class="col-sm-8"> 
                                <input type="number" onblur="validateNumber()"  class="form-control" id="number" name="contactNumber2" placeholder="Enter Contact Number" style=" resize:none">
                                <span id="spanNumber" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Contact Number 3-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Contact Number 3</label>
                            <div class="col-sm-8"> 
                                <input type="number" onblur="validateNumber()"  class="form-control" id="number" name="contactNumber3" placeholder="Enter Contact Number" style=" resize:none">
                                <span id="spanNumber" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Latitude-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Latitude</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="" class="form-control" id="latLong" name="latitude" placeholder="Enter Latitude" style=" resize:none">
                                <span id="spanLatLong" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Longitude-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Longitude</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="" class="form-control" id="latLong" name="longitude" placeholder="Enter Longitude" style=" resize:none">
                                <span id="spanLatLong" style="color:red" ></span>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-6" style="margin-left: -1.4%">

                        <div class="col-sm-12" style="min-height: 10px;"></div>

                        <!--Address-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Address</label>
                            <div class="col-sm-8"> 
                                <textarea type="text" onblur="validateAddress()" class="form-control" id="address" name="address" placeholder="Enter Full Address" style=" resize:none; height: 100px; font-size: 1.2em;"></textarea>
                                <span id="spanAddress" style="color:red" ></span>
                            </div>
                        </div>

                        <!--City-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">City</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateCity()" class="form-control" id="city" name="city" placeholder="Enter City" style=" resize:none" />
                                <span id="spanCity" style="color:red" ></span>
                            </div>
                        </div>

                        <!--State-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">State</label>
                            <div class="col-sm-8"> 
                                <input type="text" onblur="validateState()" class="form-control" id="state" name="state" placeholder="Enter State" style=" resize:none;" />
                                <span id="spanState" style="color:red" ></span>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Pincode</label>
                            <div class="col-sm-8"> 
                                <input type="number" onblur="validateZipCode()" class="form-control" id="pincode" name="pincode" placeholder="Enter Pincode" style=" resize:none" />
                                <span id="spanCity" style="color:red" ></span>
                            </div>
                        </div>

                        <!--Opening Time-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Opening Time</label>
                            <div class="col-sm-8"> 
                                <input type="time" class="form-control" id="openingTime" name="openingTime"  min="00:00" max="23:59">
                            </div>
                        </div>

                        <!--Meridian for Opening Time-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Select Meridian</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="meridianOpeningTime" name="meridianOpeningTime">
                                    <option></option>
                                    <option value="AM">AM</option>
                                    <option value="PM">PM</option>
                                </select>
                            </div>
                        </div>

                        <!--Closing Time-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Closing Time</label>
                            <div class="col-sm-8"> 
                                <input type="time" class="form-control" id="closingTime" name="closingTime"  min="00:00" max="23:59" >
                            </div>
                        </div>

                        <!--Meridian for Closing Time-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Select Meridian</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="meridianClosingTime"  name="meridianClosingTime">
                                    <option></option>
                                    <option value="AM">AM</option>
                                    <option value="PM">PM</option>
                                </select>
                            </div>
                        </div>

                        <!--image 1-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Image 1</label>
                            <div class="col-sm-8"> 
                                <input type="file" name="image1" required  class="txt"  style="border: none; border-radius: 10px;"/>
                            </div>
                        </div>

                        <!--image 2-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Image 2</label>
                            <div class="col-sm-8"> 
                                <input type="file" name="image2"  class="txt"  style="border: none; border-radius: 10px;"/>
                            </div>
                        </div>

                        <!--image 3-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Image 3</label>
                            <div class="col-sm-8"> 
                                <input type="file" name="image3"  class="txt"  style="border: none; border-radius: 10px;"/>
                            </div>
                        </div>

                        <!--image 4-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Image 4</label>
                            <div class="col-sm-8"> 
                                <input type="file" name="image4"  class="txt"  style="border: none; border-radius: 10px;"/>
                            </div>
                        </div>

                        <!--image 5-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Image 5</label>
                            <div class="col-sm-8"> 
                                <input type="file" name="image5"  class="txt"  style="border: none; border-radius: 10px;"/>
                            </div>
                        </div>

                        <!--Closed On-->
                        <div class="form-group">
                            <label class="control-label col-sm-4" style="color: #cc66ff">Closed On</label>
                            <div class="col-sm-8">
                                <div class="multiselect">
                                    <div class="selectBox" onclick="showCheckboxes();" >
                                        <select class="form-control" name="closedOn[]">
                                            <option></option>
                                        </select>
                                        <div class="overSelect"></div>
                                    </div>
                                    <div id="checkboxes">
                                        <input type="checkbox" value="sunday" style="margin-left: 2%;">Sunday<br>
                                        <input type="checkbox" value="monday" style="margin-left: 2%;">Monday<br>
                                        <input type="checkbox" value="tuesday" style="margin-left: 2%;">Tuesday<br>
                                        <input type="checkbox" value="wednesday" style="margin-left: 2%;">Wednesday<br>
                                        <input type="checkbox" value="thursday" style="margin-left: 2%;">Thursday<br>
                                        <input type="checkbox" value="friday" style="margin-left: 2%;">Friday<br>
                                        <input type="checkbox" value="saturday" style="margin-left: 2%;">Saturday<br>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--<span style="margin-left: 47%;"><a href="ForgetPasswordInfo.jsp" style="color: #cc66ff">Forget Password ?</a></span>--> 

                    </div>
                    <div class="form-group text-center"> 
                        <div class="col-sm-offset-2 col-sm-9">
                            <button type="submit" id="submit" class="btn" style="background-color: #cc66ff; color: white; margin-top: 2%;margin-left: -10%; height: 50px; width: 125px; font-size: 1.4em;">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>



        <div class="col-sm-12 footer" style="min-height: 100px; margin-top: 5%;">
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