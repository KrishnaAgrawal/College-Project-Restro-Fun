<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8; initial-scale-1; user-scalable=no">
        <title>Home</title>
        <link href="../images/fav.png" rel="icon" />
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <link href="../css/style1.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>

        <script>
            function openNewWin(id) {
                window.open('show-more-details.jsp?fid=' + id);
            }

            /*
             * show map
             * https://www.google.com/maps/search/28.7004129,77.441259,15/@28.6714081,77.4312311,14z
             */
            function showMap(lat, long) {
                if (lat.includes("3d")) {
                    lat = lat.substring(2);
                }
                if (long.includes("4d")) {
                    long = long.substring(2);
                }
                window.open("https://www.google.com/maps/search/" + lat + "," + long + "/@" + lat + "," + long + ",17z");
            }
        </script>


        <style>
            input::placeholder{
                text-align: center;
            }
        </style>

    </head>
    <body style="background-color:#f3f3f3">
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
            <div class="col-sm-8">
                <ul class="nav nav-pills  nav-justified ">
                    <li role="presentation"><a href="user_dashboard.jsp">Dashboard</a></li>
                    <li role="presentation"><a href="view_user_review.jsp">Show Reviews</a></li>
                    <li class="dropdown" role="presentation">
                        <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Settings <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: #cc66ff">
                            <li role="presentation"><a href="user_edit_profile.jsp">Edit Profile</a></li>
                            <li role="presentation"><a href="user_change_password.jsp">Change Password</a></li>
                            <li role="presentation"><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <%
            try{
            String id = request.getParameter("fid");
            
            ConnectionManager cm = new ConnectionManager();
            String query = "select * from restro_details where id ='" + id + "' ";
            ResultSet rs = cm.selectQuery(query);
            if (rs.next()) {
        %>

        <div class="container index-container">

            <!--Slider Restro-->
            <div class="col-sm-7"  style="margin-top: 2%;background-color: #f3f3f3;float: left; min-height: 500px;
                 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

                <div class="row">
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
                                <img src="../images/2.jpg" alt="crmee" style="width:100%;height:350px;">
                            </div>
                            <div class="carousel-caption">

                            </div>

                            <div class="item">
                                <img src="../images/3.jpg" alt="crmee" style="width:100%;height:350px;">
                            </div>

                            <div class="item">
                                <img src="../images/4.jpg" alt="crmee" style="width:100%;height:350px;">
                            </div>

                            <div class="item">
                                <img src="../images/1.jpg" alt="crmee" style="width:100%;height:350px;">
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

                <div class="row">
                    <div class="col-sm-7 restro-name-rating" style="min-height: 50px;width: 100%;background-color: #c1e2b3;float:left">
                        <div class="col-sm-6 restro-name" style="float: left">
                            <h2><b><%=rs.getString("restro_name")%></b></h2>
                        </div>
                        <div class="col-sm-6 restro-rating" style="float: right;text-align: right">
                            <h4 style="display: inline;margin-top: 50px;"></h4>
                            <span type="" class="btn" style="color: white; background-color: #cc66ff;margin-top: 12px;"><b><%=rs.getString("rating")%> / 5</b></span>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 restro-facilities" style="min-height: 30px;width: 100%;background-color:white" >
                        <h4><b>Theme(s)</b></h4>
                        <h5><%= ((rs.getString(5) != null) ? (rs.getString(5)) : "") + ((rs.getString(6) != null) ? (" " + rs.getString(6)) : "") + ((rs.getString(7) != null) ? (" " + rs.getString(7)) : "") + ((rs.getString(8) != null) ? (" " + rs.getString(8)) : "")%></h5>
                    </div>
                </div>
            </div>
            <div class="" style="float:left;margin-top: 2%;min-height: 500px;width:0.7%;"></div>

            <!--Show Restaurants-->
            <div class="col-sm-4 restro-other-details" style="min-height: 500px;float: left;margin-top: 2%;">
                <div class="row">
                    <div class="col-sm-12" style="min-height: 501px;background-color: white;margin-bottom: 5px; 
                         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

                        <div class="col-sm-12 text-center" style="min-height:100px;margin-top: 7%;">
                            <div class="col-sm-6" style="float:left; ">
                                <p ><b>Contact Number</b></p>
                                <p style="color:green"><%= ((rs.getString(16) != null) ? (rs.getString(16)) : "") + ((rs.getString(17) != null) ? (" " + rs.getString(17)) : "") + ((rs.getString(18) != null) ? (" " + rs.getString(18)) : "")%></p>
                            </div>
                            <div class="col-sm-6" style="float:left">
                                <p ><b>Opening Hours</b></p>
                                <p><%=rs.getString("opening_timing")%> - <%=rs.getString("closing_timing")%></p>
                            </div>
                        </div>
                        <div class="col-sm-12 text-center" style="min-height:100px;margin-top: 2%;">

                            <div class="col-sm-6 text-center" style="min-height:50px; margin-top: 2%">
                                <p ><b>Special Today</b></p>
                                <p style="color:#d43f3a"><%=((rs.getString("specail_today") != null) ? (rs.getString("specail_today")) : "no items for today")%></p>
                            </div>

                            <div class="col-sm-6 text-center" style="min-height:50px; margin-top: 2%">
                                <p ><b>Address</b></p>
                                <p><%=((rs.getString("address") != null) ? (rs.getString("address")) : "") + ((rs.getString("city") != null) ? (", " + rs.getString("city")) : "") + ((rs.getString("state") != null) ? (", " + rs.getString("state")) : "") + ((rs.getString("pincode") != null) ? (", " + rs.getString("pincode")) : "")%></p>
                            </div>
                        </div>

                        <div class="col-sm-12 container-fluid map text-center" style="margin-top: 10%; margin-bottom: 10%">
                            <div class="row">
                                <button type="button" value="Show On Map" onClick="showMap('<%=rs.getString("latitude")%>', '<%=rs.getString("longitude")%>');">Show On Map</button>
                            </div> 
                        </div>

                                    <%
                                        session.setAttribute("restro_id",id);
                                        StringBuffer requestURL = request.getRequestURL();
                                        String queryString = request.getQueryString();
                                        String url = requestURL+"?"+queryString;
                                    %>
                        <div class="col-sm-12">
                            <div class="col-sm-6 text-center" style="min-height:40px;float: left;">
                                <button type="submit" class="btn" style="color: white; background-color: #cc66ff" onclick="window.location.href = 'user_feedback.jsp?fid=user_feedback.jsp<%=queryString%>'" >Feedback</button>
                            </div>
                            <div class="col-sm-6 text-center" style="min-height:40px;float: right">
                                <button type="submit" class="btn" style="color: white; background-color: #cc66ff"onclick="window.location.href = 'user_review.jsp?fid=user_review.jsp<%=queryString%>'">Review</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>


        <label class="text-center" style="margin-left: 40%; font-size: 2em; margin-top: 3%; margin-bottom: 1%" >You may also like</label> 
        <!--Slider Restro-->
        <%
            String queryMore = "";
            Object arrID = null;
            queryMore = "select * from restro_details where city ='" + rs.getString("city") + "' ";

            ResultSet rsMore = cm.selectQuery(queryMore);
            while (rsMore.next()) {
        %>
        <div class="container index-container">
            <div class="col-sm-12 thumbnail" style="background-color: #ffccff; height: auto; width: 92.5%">
                <div class="col-sm-3" style="margin-top: 15px; margin-left: -10px;">

                    <img src="<%=request.getContextPath() + "/upload/" + rsMore.getString("image1")%>" class="thumbnail" height="200px" width="200px" />
                    <!--<img src="images/img11.jpg" alt="Restro Fun" height="200px" width="200px" class="thumbnail"/>-->

                </div>
                <div class="col-sm-9" style="margin-top: 20px;">
                    <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em; margin-bottom: 5%"><%=rsMore.getString("restro_name")%></span>
                    <br/>
                    <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em;"><%=rsMore.getString("city") + ", " + rsMore.getString("state")%></span>
                    <br/>
                    <span style="color: #cc66ff; font-weight: bold; font-size: 1.3em;">Rating: <%=rsMore.getString("rating")%></span>
                    <br/>
                    <div class="" style="margin-top: 80px; margin-left: 0px;">
                        <a class="" value="Open Window" onClick="openNewWin('<%=rsMore.getString("id")%>')" data-parent="" href="" style="font-size: 1.2em; font-weight: bold; color: #cc66ff;">
                            Show More
                        </a>    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        }
    %>



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
<%
            }catch(Exception e){
                out.print("<script>window.location.href='usercode/error.jsp'</script>");
            }
%>
</html>