<%@page import="MyPackage.CaptchaGenerator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Profile|RF</title>
        <link href="../images/fav.png" rel="icon" />
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style1.css" rel="stylesheet" type="text/css">
        <script src="../js/jquery-3.2.1.min.js" ></script>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" ></script>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%
            if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null) {
                response.sendRedirect("../login.jsp");
            } else {
        %>
        <div class="col-sm-12 header">
            <div class="row">
                <div class="col-sm-2 logo">
                    <div class="row">
                        <img src="../images/logo_1.jpg" style="width:100%;height:120px;"/>
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

        <div class="col-sm-12 menu">
            <div class="col-sm-12">
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

        <div class="col-sm-12 registration" style="height: 350px;background-image: url('images/edit-prof-img.jpg');background-size: cover;background-repeat:no-repeat ">
            <div class="row">
                <div class="col-sm-12 " style="">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6 reg_form" style="min-height: 680px;background-color: #f3f3f3;margin-top: 20px; margin-bottom: 20px;border-radius: 10px;opacity: 0.9">
                            <div class="col-sm-12 form_heading text-center" >
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-center" style="margin-top: 10px; margin-bottom: 50px; margin-left: -50px; color: #cc66ff" >Edit Your Profile</div>

                                </div>
                            </div>
                            <form class="form-horizontal" action="usercode/edit_profile_code.jsp" method="post" >
                                <%                         try {
                                        String User = (String)session.getAttribute("user_id");
//                                        out.print(User);
                                        ConnectionManager cm = new ConnectionManager();
                                        String str = "select * from customer_registration where id ='" + User + "' ";
                                        ResultSet rs = cm.selectQuery(str);
                                            while (rs.next()) {
                                %>
                                <div class="form-group">
                                    <label class="control-label col-sm-3 " for="name" style="color:#cc66ff">Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" disabled class="form-control" id="name" name="name"  value='<%=rs.getString("name")%>' />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="gender" style="color:#cc66ff">Gender</label>
                                    <div class="col-sm-9">
                                        <%
                                            String strGender = rs.getString("gender");
                                        %>
                                        <label class="radio-inline"><input value="Male" type="radio" <% out.print((!strGender.isEmpty() && (strGender.toLowerCase().equals("male"))) ? "checked=" + strGender : "");%> name="gender">Male</label>
                                        <label class="radio-inline"><input value="Female" type="radio" <% out.print((!strGender.isEmpty() && (strGender.toLowerCase().equals("female"))) ? "checked=" + strGender : "");%>  name="gender">Female</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="number" style="color:#cc66ff">Contact No</label>
                                    <div class="col-sm-9">
                                        <input type="number" class="form-control" id="contactno" name="contactno" value='<%=rs.getString("contact")%>'  placeholder="Enter your contact number" value=''/>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="address" style="color:#cc66ff;resize: vertical">Address</label>
                                    <div class="col-sm-9">
                                        <textarea placeholder="Enter address here" id="address" name="address" rows="3" class="form-control"><%=rs.getString("address")%></textarea>
                                    </div>
                                </div>	

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="city" style="color:#cc66ff">City</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" value='<%=rs.getString("City")%>' id="city" name="city" placeholder="Enter your city" value=''>
                                    </div>
                                </div>	
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="state" style="color:#cc66ff">State</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="state"  value='<%=rs.getString("State")%>' name="state" placeholder="Enter your state">
                                    </div>
                                </div>	
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="zipcode" style="color:#cc66ff">Zipcode</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="zipcode" value='<%=rs.getString("Zipcode")%>' name="zipcode" placeholder="Enter your zipcode">
                                    </div>
                                </div>	


                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="email" style="color:#cc66ff">Email Address</label>
                                    <div class="col-sm-9">
                                        <input type="email" disabled class="form-control" id="emailaddress"value='<%=rs.getString("Email")%>'  name="emailaddress" placeholder="Enter your email id" />
                                    </div>
                                </div>




                                <div class="form-group">
                                    <div>  
                                        <div class="col-sm-12" style="min-height: 30px;"></div>	
                                        <div class="form-group text-center"> 
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn" style="color: white; background-color: #cc66ff">Save</button>
                                            </div>
                                        </div>
                                        <%
                                                }
                                            } catch (Exception e) {
                                                out.print("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");
                                            }
                                        %>
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
                <%
                    }
                %>