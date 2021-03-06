<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8; initial-scale-1; user-scalable=no">
        <title>Restro Fun</title>
        <link href="images/fav.png" rel="icon" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            function openNewWin(id) {
                window.open('show-more-details.jsp?fid=' + id);
            }
        </script>
        
        <style>
            input::placeholder{
                text-align: center;
            }
        </style>

    </head>
    <body>
        <!--header code-->
        <div class="col-sm-12 header">
            <div class="row">
                <div class="col-sm-2 logo hidden-xs hidden-sm">
                    <div class="row">

                        <a href="index.jsp" ><img src="images/logo_1.jpg" style="width:100%;height:120px;"/></a>
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

        <!--Rolly Menu Code-->
        <div class="col-sm-12 menu" style="background-color: #cc66ff">
            <div class="col-sm-8">
                <ul class="nav nav-pills  nav-justified ">
                    <li role="presentation" ><a href="index.jsp">Home</a></li>
                    <li role="presentation"><a href="about.jsp">About Us</a></li>
                    <li role="presentation"><a href="registration.jsp">Registration</a></li>
                    <li role="presentation"><a href="enquiry.jsp">Enquiry</a></li>
                    <li role="presentation"><a href="login.jsp">Login</a></li>
                    <li role="presentation"><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <form action="code/search-result.jsp" method="post" class="navbar-form navbar-left" role="search" style="text-align: right">
                    <div class="form-group">
                        <input type="text" name="search" class="form-control" placeholder="Search Your Choice" style="width: 150%;">
                    </div>
                    <button type="submit" class="btn btn-default" style="margin-left: 100px;">Submit</button>
                </form>

            </div>
        </div>

        <!--Slider Code-->
        <div class="col-sm-12 slider" style="width: 100%; margin-bottom: 1%; margin-top: 1%"> 
            <div class="row">


                <div class="container-fluid">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="images/2.jpg" alt="crmee" style="width:100%;">
                            </div>
                            <div class="carousel-caption">

                            </div>

                            <div class="item">
                                <img src="images/3.jpg" alt="crmee" style="width:100%;">
                            </div>

                            <div class="item">
                                <img src="images/4.jpg" alt="crmee" style="width:100%;">
                            </div>

                            <div class="item">
                                <img src="images/1.jpg" alt="crmee" style="width:100%;">
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <!--<span class="glyphicon glyphicon-chevron-left"></span>-->
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <!--<span class="glyphicon glyphicon-chevron-right"></span>-->
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div> 


        <div class="col-sm-12"  style="margin-bottom: 2%;">

            <!--left side code-->
            <div class="col-sm-3" style="margin-bottom: 2%;margin-top: 2%;background-color: white;float: left; 
                 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <form action="code/search-result.jsp" method="post" >
                    <div class="col-sm-12" style="margin-top: 5%">
                        <span style="color: #cc66ff; margin-left: 35%; font-weight: bold; font-size: 1.2em;">Theme</span>
                        <hr style="border-top:1px solid #cc66ff; margin-top: -2px;">
                        <input type="checkbox" value="Birthday" name="birthday" />
                        <span>Birthday</span>
                        <br/>
                        <input type="checkbox" value="Meeting" name="meetings" />
                        <span>Meetings</span>
                        <br/>
                        <input type="checkbox" value="Couple" name="couples" />
                        <span>Couples</span>
                        <br/>
                        <input type="checkbox" value="Family" name="family"  />
                        <span>Family</span>
                        <br/>
                        <br/>
                        <span style="color: #cc66ff; margin-left: 35%; font-weight: bold; font-size: 1.2em;">Location</span>
                        <hr style="border-top: 1px solid #cc66ff; margin-top: -2px;">
                        <input type="checkbox" value="rdc" name="rdc" />
                        <span>RDC</span>
                        <br/>
                        <input type="checkbox" value="Ghaziabad" name="ghaziabad" />
                        <span>Ghaziabad</span>
                        <br/>
                        <input type="checkbox" value="Raj Nagar" name="rajNagar" />
                        <span>Raj Nagar</span>
                        <br/>
                        <input type="checkbox" value="Indirapuram" name="indirapuram" />
                        <span>Indirapuram</span>
                        <br/>
                        <input type="checkbox" value="New Delhi" name="newDelhi" />
                        <span>New Delhi</span>
                        <br/>
                        <input type="checkbox" value="Noida" name="noida" />
                        <span>Noida</span>
                        <br/>
                        <input type="checkbox" value="Vaishali" name="vaishali" />
                        <span>Vaishali</span>
                        <br/>
                        <br/>
                        <span style="color: #cc66ff; margin-left: 35%; font-weight: bold; font-size: 1.2em">Ratings</span>
                        <hr style="border-top:1px solid #cc66ff; margin-top: -2px;">
                        <input type="checkbox" value="1" name="1star" />
                        <span style="color: red; font-size: 1.3em; font-weight: bold;">&#9957</span>
                        <br/>
                        <input type="checkbox" value="2"  name="2star"  />
                        <span style="color: orange; font-size: 1.3em; font-weight: bold;">&#9957 &#9957</span>
                        <br/>
                        <input type="checkbox" value="3"  name="3star"  />
                        <span style="color: yellow; font-size: 1.3em; font-weight: bold;">&#9957 &#9957 &#9957</span>
                        <br/>
                        <input type="checkbox" value="4"  name="4star"  />
                        <span style="color: yellowgreen; font-size: 1.3em; font-weight: bold;">&#9957 &#9957 &#9957 &#9957</span>
                        <br/>
                        <input type="checkbox" value="5"  name="5star"  />
                        <span style="color: green; font-size: 1.3em; font-weight: bold;">&#9957&#9957 &#9957 &#9957 &#9957</span>
                        <br/>
                        <button type="submit" class="btn" style="background-color: #cc66ff; color: white; margin-top: 8%; margin-left: 30%; margin-bottom: 8%">Submit</button>
                    </div>
                </form>
            </div>

            <div class="col-sm-1" style="float:left;margin-top: 2%;min-height: 500px;width:0.7%;"></div>

            <!--Right side Code-->
            <div class="col-sm-8 thumbnail" style="margin-left: -10px;margin-bottom: 2%;margin-top: 2%;background-color: white;float: left; 
                 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <%
                    ConnectionManager cm = new ConnectionManager();
                    String query = "";
                    ArrayList arr = null;
                    Object arrID = null;
                    if (session.getAttribute("arrID") != null || session.getAttribute("arrID") != "") {
                        arrID = session.getAttribute("arrID");
                        arr = (ArrayList) arrID;
                    }
                    Iterator itr = arr.iterator();
                    if (!itr.hasNext()) {
                        out.print("No result found.");
                    }
                    while (itr.hasNext()) {
                        if (arrID != null || arrID != "") {
                            query = "select id,restro_name, rating, city, state, image1 from restro_details where id = '" + itr.next() + "' order by rating desc";

                        } else {
                            query = "select id,restro_name, rating, city, state, image1 from restro_details where rating > 4 order by rating desc";

                        }
                        ResultSet rs = cm.selectQuery(query);
                        while (rs.next()) {
                %>

                <div class="col-sm-12 thumbnail" style="text-align: match-parent; margin-bottom: 1%; ">

                    <div class="col-sm-12 " style=" height: auto; ">
                        <div class="col-sm-3" style="margin-top: 15px; margin-left: -10px;">

                            <img src="<%=request.getContextPath() + "/upload/" + rs.getString("image1")%>" class="thumbnail" height="200px" width="200px" />
                            <!--<img src="images/img11.jpg" alt="Restro Fun" height="200px" width="200px" class="thumbnail"/>-->

                        </div>
                        <div class="col-sm-9" style="margin-top: 20px;">
                            <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em; margin-bottom: 5%"><%=rs.getString("restro_name")%></span>
                            <br/>
                            <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em;"><%=rs.getString("city") + ", " + rs.getString("state")%></span>
                            <br/>
                            <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em;">Rating: <%=rs.getString("rating")%></span>
                            <br/>
                            <div class="" style="margin-top: 80px; margin-left: 0px;">
                                <a class="" value="Open Window" onClick="openNewWin('<%=rs.getString("id")%>')" data-parent="" href="" style="font-size: 1.2em; font-weight: bold; color: #cc66ff;">
                                    Show More
                                </a>    
                            </div>
                        </div>
                    </div>
                </div>

                <%
                        }
                    }

                %>

            </div>
        </div>



        <div class="col-sm-12 footer" style="min-height: 100px; margin-top: 2%;">
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

    </body>

</html>