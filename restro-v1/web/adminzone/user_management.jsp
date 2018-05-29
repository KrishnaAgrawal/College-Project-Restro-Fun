<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
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

        <script>
            function openNewWin() {
                window.open("");
            }
        </script>


        <style>
            input::placeholder{
                text-align: center;
            }
        </style>

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
                try{
                if (session.getAttribute("user_id") == "" || session.getAttribute("user_id") == null) {
                    response.sendRedirect("../login.jsp");
                } else {
            %>

        </div>


        <div class="col-sm-12 admin_main table-responsive" style="background-color: white;min-height: 500px;">
            <center>
                <h2 style="color:#cc66ff;">Customers Details</h2>
                <br><br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>S.No.</th>
                            <th>Customer Name</th>
                            <th>Gender</th>
                            <th>Contact No</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Registration Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int n = 1;
                            ConnectionManager cm = new ConnectionManager();
                            String q = "select * from customer_registration ORDER BY registration_date DESC ";
                            ResultSet rs = cm.selectQuery(q);
                            while (rs.next()) {

                        %>  
                        <tr>
                            <td><%=n%></td>
                            <td><%=rs.getString("name")%></td>       
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("contact")%></td>
                            <td><%=rs.getString("address") + "," + rs.getString("city") + ", " + rs.getString("state") + ", " + rs.getString("zipcode")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("registration_date")%></td>
                            <td><a href="admincode/delete_user.jsp?username=<%=rs.getString("email")%>"  data-placement="top" data-toggle="tooltip" title="Delete"><span class="glyphicon glyphicon-trash"></span></a></td>
                        </tr>
                        <%
                                n++;
                            }
                        %>   
                    </tbody>         


                </table>
            </center>
        </div>   




        <div class="col-sm-12 footer" style="min-height: 100px">
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
<%
    }
                }catch(Exception e){
                    out.print("<script>window.location.href='admincode/error.jsp'</script>");
                }
%>