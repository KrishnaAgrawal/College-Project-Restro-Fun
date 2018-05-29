<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStream"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String restroName = request.getParameter("restaurantName");
    String url = request.getParameter("URL");
    String rating = request.getParameter("rating");
    String theme1 = request.getParameter("theme1");
    String theme2 = request.getParameter("theme2");
    String theme3 = request.getParameter("theme3");
    String theme4 = request.getParameter("theme4");
    String specialToday = request.getParameter("specialToday");
    String offersAndDiscounts = request.getParameter("offersAndDiscounts");
    String address = request.getParameter("address");
    String latitude = request.getParameter("latitude");
    String longitude = request.getParameter("longitude");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String pincode=request.getParameter("pincode");
    String contactNumber1 = request.getParameter("contactNumber1");
    String contactNumber2 = request.getParameter("contactNumber2");
    String contactNumber3 = request.getParameter("contactNumber3");
    String openingTime = request.getParameter("openingTime");
    String meridianOpeningTime = request.getParameter("meridianOpeningTime");
    String closingTime = request.getParameter("closingTime");
    String meridianClosingTime = request.getParameter("meridianClosingTime");
    String closedOn = request.getParameter("closedOn");
//    String image1 = request.getParameter("image1");
//    String image2 = request.getParameter("image2");
//    String image3 = request.getParameter("image3");
//    String image4 = request.getParameter("image4");
//    String image5 = request.getParameter("image5");
    String dateModified = "";
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    String dateCreated = sdf.format(new Date());
    try{
        Part image1 = request.getPart("image1");
        String nameImage1 = image1.getSubmittedFileName();
        InputStream is1 = image1.getInputStream();
//        image2 = request.getPart("image2");
//        nameImage2 = image2.getSubmittedFileName();
//        is2 = image2.getInputStream();
//        image3 = request.getPart("image3");
//        nameImage3 = image3.getSubmittedFileName();
//        is3 = image3.getInputStream();
//        image4 = request.getPart("image4");
//        nameImage4 = image4.getSubmittedFileName();
//        is4 = image4.getInputStream();
//        image5 = request.getPart("image5");
//        nameImage5 = image5.getSubmittedFileName();
//        is5 = image5.getInputStream();
    
//    
//    out.print(restaurantName+"<br />"
//            + ""+url+"<br />"
//            + ""+rating+"<br />"
//            + ""+theme1+"<br />"
//            + ""+theme2+"<br />"
//            + ""+theme3+"<br />"
//            + ""+theme4+"<br />"
//            + ""+specialToday+"<br />"
//            + ""+offersAndDiscounts+"<br />"
//            + ""+address+"<br />"
//            + ""+latitude+"<br />"
//            + ""+longitude+"<br />"
//            + ""+city+"<br />"
//            + ""+state+"<br />"
//            + ""+contactNumber1+"<br />"
//            + ""+contactNumber2+"<br />"
//            + ""+contactNumber3+"<br />"
//            + ""+openingTime+"<br />"
//            + ""+meridianOpeningTime+"<br />"
//            + ""+closingTime+"<br />"
//            + ""+meridianClosingTime+"<br />"
//            + ""+closedOn+"<br />"
//            + ""+restaurantName+nameImage1+"<br />");
//            + ""+restaurantName+nameImage2+"<br />"
//            + ""+restaurantName+nameImage3+"<br />"
//            + ""+restaurantName+nameImage4+"<br />"
//            + ""+restaurantName+nameImage5);
    String id=restroName+pincode;
    String query = "insert into restro_details values(id,restro_name,url,rating,theme1,theme2,theme2,theme3,theme4,specail_today,offers_and_discounts,address,latitude,longitude,city,state,pincode,contact_number1,contact_number2,contact_number3,opening_timing,closing_timing,closed_on,image1,date_created,date_modified)("
            + "'"+id+"',"
            + "'"+restroName+"',"
            + "'"+url+"',"
            + ""+rating+","
            + "'"+theme1+"',"
            + "'"+theme2+"',"
            + "'"+theme3+"',"
            + "'"+theme4+"',"
            + "'"+specialToday+"',"
            + "'"+offersAndDiscounts+"',"
            + "'"+address+"',"
            + "'"+latitude+"',"
            + "'"+longitude+"',"
            + "'"+city+"',"
            + "'"+state+"',"
            + "'"+pincode+"',"
            + "'"+contactNumber1+"',"
            + "'"+contactNumber2+"',"
            + "'"+contactNumber3+"',"
            + "'"+openingTime+"',"
            + "'"+closingTime+"',"
            + "'"+closedOn+"',"
            + "'"+(restroName+nameImage1)+"',"
//            + "'"+(restaurantName+nameImage2)+"',"
//            + "'"+(restaurantName+nameImage3)+"',"
//            + "'"+(restaurantName+nameImage4)+"',"
//            + "'"+(restaurantName+nameImage5)+"',"
            + "'"+dateCreated+"',"
            + "'"+dateModified+"')";
    
    ConnectionManager cm = new ConnectionManager();
    if(cm.executeNonQuery(query)){
        out.print("<script>alert('Details Successfully Saved.');window.location.href='../add-restro.jsp';</script>");
    }
    else{
        out.print("<script>alert('Something went wrong.');</script>");
    }
    }
    catch(Exception e){
        out.print(e);
    }
%>


