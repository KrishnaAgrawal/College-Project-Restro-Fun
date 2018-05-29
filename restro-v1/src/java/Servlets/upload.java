/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import MyPackage.ConnectionManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Aaditya
 */
@MultipartConfig
@WebServlet(name = "upload", urlPatterns = {"/upload"})
public class upload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String dateCreated = "";
            String date = "";
            String time = "";
            String arrDateCreated[] = new String[20];
            String restaurantName = request.getParameter("restaurantName");
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
            String pincode = request.getParameter("pincode");
            String contactNumber1 = request.getParameter("contactNumber1");
            String contactNumber2 = request.getParameter("contactNumber2");
            String contactNumber3 = request.getParameter("contactNumber3");
            String openingTime = request.getParameter("openingTime");
            String meridianOpeningTime = request.getParameter("meridianOpeningTime");
            String closingTime = request.getParameter("closingTime");
            String meridianClosingTime = request.getParameter("meridianClosingTime");
            String closedOn = "";
            closedOn = request.getParameter("closedOn");
            String dateModified = "";
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            String currentTime = dtf.format(now);
            
            arrDateCreated = currentTime.split(" ");
            date = arrDateCreated[0];
            dateCreated = date;
            time = arrDateCreated[1];
            arrDateCreated = date.split("/");
            date = arrDateCreated[0] + "_" + arrDateCreated[1] + "_" + arrDateCreated[2];

            arrDateCreated = time.split(":");
            time = arrDateCreated[0] + "_" + arrDateCreated[1] + "_" + arrDateCreated[2];
            time = date + "_" + time;
            openingTime += " " + meridianOpeningTime;
            closingTime += " " + meridianClosingTime;

            Part image1 = request.getPart("image1");
            String nameImage1 = image1.getSubmittedFileName();
            InputStream is1 = image1.getInputStream();

            Part image2 = request.getPart("image2");
            String nameImage2 = "";
            InputStream is2 = null;
            if (image2.getSize() != 0) {
                nameImage2 = image2.getSubmittedFileName();
                is2 = image2.getInputStream();
            }
            Part image3 = request.getPart("image3");
            String nameImage3 = "";
            InputStream is3 = null;
            if (image3.getSize() != 0) {
                nameImage3 = image3.getSubmittedFileName();
                is3 = image3.getInputStream();
            }

            Part image4 = request.getPart("image4");
            String nameImage4 = "";
            InputStream is4 = null;
            if (image4.getSize() != 0) {
                nameImage4 = image4.getSubmittedFileName();
                is4 = image4.getInputStream();
            }
            Part image5 = request.getPart("image5");
            String nameImage5 = "";
            InputStream is5 = null;
            if (image5.getSize() != 0) {
                nameImage5 = image5.getSubmittedFileName();
                is5 = image5.getInputStream();
            }
//            
//            PrintWriter out = response.getWriter();
//            out.print(restaurantName+"\n"
//            + "" + restaurantName + "_" + latitude + "_" + longitude + "_" + time + "\n"
//            + ""+url+"\n"
//            + ""+rating+"\n"
//            + ""+theme1+"\n"
//            + ""+theme2+"\n"
//            + ""+theme3+"\n"
//            + ""+theme4+"\n"
//            + ""+specialToday+"\n"
//            + ""+offersAndDiscounts+"\n"
//            + ""+address+"\n"
//            + ""+latitude+"\n"
//            + ""+longitude+"\n"
//            + ""+city+"\n"
//            + ""+state+"\n"
//            + ""+contactNumber1+"\n"
//            + ""+contactNumber2+"\n"
//            + ""+contactNumber3+"\n"
//            + ""+openingTime+"\n"
//            + ""+meridianOpeningTime+"\n"
//            + ""+closingTime+"\n"
//            + ""+meridianClosingTime+"\n"
//            + ""+closedOn+"\n"
//            + ""+restaurantName+nameImage1+"\n"
//            + ""+restaurantName+nameImage2+"\n"
//            + ""+restaurantName+nameImage3+"\n"
//            + ""+restaurantName+nameImage4+"\n"
//                    
//            + ""+restaurantName+nameImage5+"\n"
//            + ""+pincode+"\n");
            
            
            String query = "insert into restro_details values("
                    + "'" + restaurantName + "_" + latitude + "_" + longitude + "_" + time + "',"
                    + "'" + restaurantName + "',"
                    + "'" + url + "',"
                    + "'" + rating + "',"
                    + "'" + theme1 + "',"
                    + "'" + theme2 + "',"
                    + "'" + theme3 + "',"
                    + "'" + theme4 + "',"
                    + "'" + specialToday + "',"
                    + "'" + offersAndDiscounts + "',"
                    + "'" + address + "',"
                    + "'" + latitude + "',"
                    + "'" + longitude + "',"
                    + "'" + city + "',"
                    + "'" + state + "',"
                    + "'" + contactNumber1 + "',"
                    + "'" + contactNumber2 + "',"
                    + "'" + contactNumber3 + "',"
                    + "'" + openingTime + "',"
                    + "'" + closingTime + "',"
                    + "'" + closedOn + "',"
                    + "'" + (restaurantName + "_" + time + "_" + nameImage1) + "',"
                    + "'" + (restaurantName + "_" + time + "_" + nameImage2) + "',"
                    + "'" + (restaurantName + "_" + time + "_" + nameImage3) + "',"
                    + "'" + (restaurantName + "_" + time + "_" + nameImage4) + "',"
                    + "'" + (restaurantName + "_" + time + "_" + nameImage5) + "',"
                    + "'" + currentTime + "',"
                    + "'" + dateModified + "',"
                    + "'" + pincode + "')";

            ConnectionManager cm = new ConnectionManager();
//File file = new File(request.getRealPath("/upload"), restaurantName + nameImage1);
//                Files.copy(is1, file.toPath());

            if (cm.executeNonQuery(query)) {
                File file1 = new File(request.getRealPath("/upload"), restaurantName + "_" + time + "_" + nameImage1);
                Files.copy(is1, file1.toPath());
                if (is2 != null) {
                    File file2 = new File(request.getRealPath("/upload"), restaurantName + "_" + time + "_" + nameImage2);
                    Files.copy(is2, file2.toPath());
                }
                if (is3 != null) {
                    File file3 = new File(request.getRealPath("/upload"), restaurantName + "_" + time + "_" + nameImage3);
                    Files.copy(is3, file3.toPath());
                }
                if (is4 != null) {
                    File file4 = new File(request.getRealPath("/upload"), restaurantName + "_" + time + "_" + nameImage4);
                    Files.copy(is4, file4.toPath());
                }
                if (is5 != null) {
                    File file5 = new File(request.getRealPath("/upload"), restaurantName + "_" + time + "_" + nameImage5);
                    Files.copy(is5, file5.toPath());
                }
                response.sendRedirect("adminzone/add-restro.jsp?s=save");
            } else {
                response.sendRedirect("adminzone/add-restro.jsp?s=not");
            }

        } catch (IOException | NumberFormatException | ServletException ex) {

            PrintWriter out = response.getWriter();
            out.print("adminzone/add-restro.jsp?err=" + ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
