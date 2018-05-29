<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%
    /*
     *   Search with search box
     */
    try{
    String search = request.getParameter("search");
    ArrayList<String> arrID = new ArrayList<>();
    ConnectionManager cm = new ConnectionManager();

    if (search == null || search.length() == 0) {
        out.print("<script>window.loaction.href='../index.jsp'</script>");
    } else {

        ArrayList<String> arr = new ArrayList<String>(Arrays.asList(search.split(" ")));
        Iterator itr = arr.iterator();
        String searchFirstWord = "";
        String searchRestWord = "";
        String query = "";
        while (itr.hasNext()) {
            search = (String) itr.next();
            searchFirstWord = search.substring(0, 1);
            searchRestWord = search.substring(1);
            query = "select id from restro_details where "
                    + "restro_name like '%" + searchRestWord + "%' or "
                    + "city like '%" + searchRestWord + "%' or "
                    + "state like '%" + searchRestWord + "%' or "
                    + "address like '%" + searchRestWord + "%' or "
                    + "pincode like '%" + searchRestWord + "%' or "
                    + "restro_name like '%" + search + "%' or "
                    + "city like '%" + search + "%' or "
                    + "state like '%" + search + "%' or "
                    + "address like '%" + search + "%' or "
                    + "pincode like '%" + search + "%' or "
                    + "restro_name like '%" + search + "%' or "
                    + "city like '%" + search + "%' or "
                    + "state like '%" + search + "%' or "
                    + "address like '%" + search + "%' or "
                    + "pincode like '%" + search + "%'";
        }
        ResultSet rs = cm.selectQuery(query);
        while (rs.next()) {
            arrID.add(rs.getString("id"));
        }
    }

    /*
     *   themes
     */
    String birthday = null;
    String family = null;
    String meeting = null;
    String couple = null;
    String themeBirthdayWord = "";
    String themeBirthdayRestWord = "";

    String themeMeetingWord = "";
    String themeMeetingRestWord = "";

    String themeCoupleWord = "";
    String themeCoupleRestWord = "";

    String themeFamilyWord = "";
    String themeFamilyRestWord = "";

    birthday = request.getParameter("birthday");
    meeting = request.getParameter("meetings");
    couple = request.getParameter("couples");
    family = request.getParameter("family");
  
    if ((birthday != "" && birthday != null)) {
        themeBirthdayWord = birthday.substring(0, 1);
        themeBirthdayRestWord = birthday.substring(1);
        String queryBirthday = "select id from restro_details where "
                + "theme1 like '%" + themeBirthdayRestWord + "%' or "
                + "theme2 like '%" + themeBirthdayRestWord + "%' or "
                + "theme3 like '%" + themeBirthdayRestWord + "%' or "
                + "theme4 like '%" + themeBirthdayRestWord + "%' or "
                + "theme1 like '%" + birthday + "%' or "
                + "theme2 like '%" + birthday + "%' or "
                + "theme3 like '%" + birthday + "%' or "
                + "theme4 like '%" + birthday + "%' ";
        ResultSet rsBirthday = cm.selectQuery(queryBirthday);
        while (rsBirthday.next()) {
            arrID.add(rsBirthday.getString("id"));
        }

    }
    if ((meeting != "" && meeting != null)) {
        themeMeetingWord = meeting.substring(0, 1);
        themeMeetingRestWord = meeting.substring(1);
        String queryMeeting = "select id from restro_details where "
                + "theme1 like '%" + themeMeetingRestWord + "%' or "
                + "theme2 like '%" + themeMeetingRestWord + "%' or "
                + "theme3 like '%" + themeMeetingRestWord + "%' or "
                + "theme4 like '%" + themeMeetingRestWord + "%' or "
                + "theme1 like '%" + meeting + "%' or "
                + "theme2 like '%" + meeting + "%' or "
                + "theme3 like '%" + meeting + "%' or "
                + "theme4 like '%" + meeting + "%' ";
        ResultSet rsMeeting = cm.selectQuery(queryMeeting);
        while (rsMeeting.next()) {
            arrID.add(rsMeeting.getString("id"));
        }

    }
    if ((couple != "" && couple != null)) {
        themeCoupleWord = couple.substring(0, 1);
        themeCoupleRestWord = couple.substring(1);
        String queryCouple = "select id from restro_details where "
                + "theme1 like '%" + themeCoupleRestWord + "%' or "
                + "theme2 like '%" + themeCoupleRestWord + "%' or "
                + "theme3 like '%" + themeCoupleRestWord + "%' or "
                + "theme4 like '%" + themeCoupleRestWord + "%' or "
                + "theme1 like '%" + couple + "%' or "
                + "theme2 like '%" + couple + "%' or "
                + "theme3 like '%" + couple + "%' or "
                + "theme4 like '%" + couple + "%' ";

        ResultSet rsCouple = cm.selectQuery(queryCouple);
        while (rsCouple.next()) {
            arrID.add(rsCouple.getString("id"));
        }

    }
    if ((family != "" && family != null)) {
        themeFamilyWord = family.substring(0, 1);
        themeFamilyRestWord = family.substring(1);
        String queryFamily = "select id from restro_details where "
                + "theme1 like '%" + themeFamilyRestWord + "%' or "
                + "theme2 like '%" + themeFamilyRestWord + "%' or "
                + "theme3 like '%" + themeFamilyRestWord + "%' or "
                + "theme4 like '%" + themeFamilyRestWord + "%' or "
                + "theme1 like '%" + family + "%' or "
                + "theme2 like '%" + family + "%' or "
                + "theme3 like '%" + family + "%' or "
                + "theme4 like '%" + family + "%' ";

        ResultSet rsFamily = cm.selectQuery(queryFamily);
        while (rsFamily.next()) {
            arrID.add(rsFamily.getString("id"));
        }
    }
    
    /*
    *   Top Places
    */
    
    String strTopPlacesRDC = "";
    String strTopPlacesGhaziabad = "";
    String strTopPlacesRajNagar = "";
    String strTopPlacesIndirapuram = "";
    String strTopPlacesNewDelhi = "";
    String strTopPlacesNoida = "";
    String strTopPlacesVaishali = "";
    
    String strTopPlacesRDCFirstWord = "";
    String strTopPlacesGhaziabadFirstWord = "";
    String strTopPlacesRajNagarFirstWord = "";
    String strTopPlacesIndirapuramFirstWord = "";
    String strTopPlacesNewDelhiFirstWord = "";
    String strTopPlacesNoidaFirstWord = "";
    String strTopPlacesVaishaliFirstWord = "";
    
    String strTopPlacesRDCLastWord = "";
    String strTopPlacesGhaziabadLastWord = "";
    String strTopPlacesRajNagarLastWord = "";
    String strTopPlacesIndirapuramLastWord = "";
    String strTopPlacesNewDelhiLastWord = "";
    String strTopPlacesNoidaLastWord = "";
    String strTopPlacesVaishaliLastWord = "";
    
    strTopPlacesRDC = request.getParameter("rdc");
    strTopPlacesGhaziabad = request.getParameter("ghaziabad");
    strTopPlacesRajNagar = request.getParameter("rajNagar");
    strTopPlacesIndirapuram = request.getParameter("indirapuram");
    strTopPlacesNewDelhi = request.getParameter("newDelhi");
    strTopPlacesNoida = request.getParameter("noida");
    strTopPlacesVaishali = request.getParameter("vaishali");
    
    if ((strTopPlacesRDC != "" && strTopPlacesRDC != null)) {
        strTopPlacesRDCFirstWord = strTopPlacesRDC.substring(0, 1);
        strTopPlacesRDCLastWord = strTopPlacesRDC.substring(1);
        String queryCityChennai = "select id from restro_details where "
                + "city like '%" + strTopPlacesRDCLastWord + "%' or "
                + "city like '%" + strTopPlacesRDCLastWord + "%' or "
                + "city like '%" + strTopPlacesRDCLastWord + "%' or "
                + "city like '%" + strTopPlacesRDCLastWord + "%' or "
                + "city like '%" + strTopPlacesRDC + "%' or "
                + "city like '%" + strTopPlacesRDC + "%' or "
                + "city like '%" + strTopPlacesRDC + "%' or "
                + "address like '%" + strTopPlacesRDCLastWord + "%' or "
                + "address like '%" + strTopPlacesRDCLastWord + "%' or "
                + "address like '%" + strTopPlacesRDCLastWord + "%' or "
                + "address like '%" + strTopPlacesRDCLastWord + "%' or "
                + "address like '%" + strTopPlacesRDC + "%' or "
                + "address like '%" + strTopPlacesRDC + "%' or "
                + "address like '%" + strTopPlacesRDC + "%' or "
                + "address like '%" + strTopPlacesRDC + "%' ";

        ResultSet rsChennai = cm.selectQuery(queryCityChennai);
        while (rsChennai.next()) {
            arrID.add(rsChennai.getString("id"));
        }
    }

    if ((strTopPlacesGhaziabad != "" && strTopPlacesGhaziabad != null)) {
        strTopPlacesGhaziabadFirstWord = strTopPlacesGhaziabad.substring(0, 1);
        strTopPlacesGhaziabadLastWord = strTopPlacesGhaziabad.substring(1);
        String queryCityGhaziabad = "select id from restro_details where "
                + "city like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "city like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "city like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "city like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "city like '%" + strTopPlacesGhaziabad + "%' or "
                + "city like '%" + strTopPlacesGhaziabad + "%' or "
                + "city like '%" + strTopPlacesGhaziabad + "%' or "
                + "address like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "address like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "address like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "address like '%" + strTopPlacesGhaziabadLastWord + "%' or "
                + "address like '%" + strTopPlacesGhaziabad + "%' or "
                + "address like '%" + strTopPlacesGhaziabad + "%' or "
                + "address like '%" + strTopPlacesGhaziabad + "%' or "
                + "city like '%" + strTopPlacesGhaziabad + "%' ";

        ResultSet rsGhaziabad = cm.selectQuery(queryCityGhaziabad);
        while (rsGhaziabad.next()) {
            arrID.add(rsGhaziabad.getString("id"));
        }
    }

    if ((strTopPlacesRajNagar != "" && strTopPlacesRajNagar != null)) {
        strTopPlacesRajNagarFirstWord = strTopPlacesRajNagar.substring(0, 1);
        strTopPlacesRajNagarLastWord = strTopPlacesRajNagar.substring(1);
        String queryCityKolkata = "select id from restro_details where "
                + "city like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "city like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "city like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "city like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "city like '%" + strTopPlacesRajNagar + "%' or "
                + "city like '%" + strTopPlacesRajNagar + "%' or "
                + "city like '%" + strTopPlacesRajNagar + "%' or "
                + "address like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "address like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "address like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "address like '%" + strTopPlacesRajNagarLastWord + "%' or "
                + "address like '%" + strTopPlacesRajNagar + "%' or "
                + "address like '%" + strTopPlacesRajNagar + "%' or "
                + "address like '%" + strTopPlacesRajNagar + "%' or "
                + "address like '%" + strTopPlacesRajNagar + "%' ";

        ResultSet rsKolkata = cm.selectQuery(queryCityKolkata);
        while (rsKolkata.next()) {
            arrID.add(rsKolkata.getString("id"));
        }
    }
    
    if ((strTopPlacesIndirapuram != "" && strTopPlacesIndirapuram != null)) {
        strTopPlacesIndirapuramFirstWord = strTopPlacesIndirapuram.substring(0, 1);
        strTopPlacesIndirapuramLastWord = strTopPlacesIndirapuram.substring(1);
        String queryCityMumbai = "select id from restro_details where "
                + "city like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "city like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "city like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "city like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "city like '%" + strTopPlacesIndirapuram + "%' or "
                + "city like '%" + strTopPlacesIndirapuram + "%' or "
                + "city like '%" + strTopPlacesIndirapuram + "%' or "
                + "address like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "address like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "address like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "address like '%" + strTopPlacesIndirapuramLastWord + "%' or "
                + "address like '%" + strTopPlacesIndirapuram + "%' or "
                + "address like '%" + strTopPlacesIndirapuram + "%' or "
                + "address like '%" + strTopPlacesIndirapuram + "%' or "
                + "city like '%" + strTopPlacesIndirapuram + "%' ";

        ResultSet rsMumbai = cm.selectQuery(queryCityMumbai);
        while (rsMumbai.next()) {
            arrID.add(rsMumbai.getString("id"));
        }
    }
    
    if ((strTopPlacesNewDelhi != "" && strTopPlacesNewDelhi != null)) {
        strTopPlacesNewDelhiFirstWord = strTopPlacesNewDelhi.substring(0, 1);
        strTopPlacesNewDelhiLastWord = strTopPlacesNewDelhi.substring(1);
        String queryCityNewDelhi = "select id from restro_details where "
                + "city like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "city like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "city like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "city like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "city like '%" + strTopPlacesNewDelhi + "%' or "
                + "city like '%" + strTopPlacesNewDelhi + "%' or "
                + "city like '%" + strTopPlacesNewDelhi + "%' or "
                + "address like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "address like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "address like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "address like '%" + strTopPlacesNewDelhiLastWord + "%' or "
                + "address like '%" + strTopPlacesNewDelhi + "%' or "
                + "address like '%" + strTopPlacesNewDelhi + "%' or "
                + "address like '%" + strTopPlacesNewDelhi + "%' or "
                + "city like '%" + strTopPlacesNewDelhi + "%' ";

        ResultSet rsNewDelhi = cm.selectQuery(queryCityNewDelhi);
        while (rsNewDelhi.next()) {
            arrID.add(rsNewDelhi.getString("id"));
        }
    }
    
    if ((strTopPlacesNoida != "" && strTopPlacesNoida != null)) {
        strTopPlacesNoidaFirstWord = strTopPlacesNoida.substring(0, 1);
        strTopPlacesNoidaLastWord = strTopPlacesNoida.substring(1);
        String queryCityNoida = "select id from restro_details where "
                + "city like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "city like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "city like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "city like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "city like '%" + strTopPlacesNoida + "%' or "
                + "city like '%" + strTopPlacesNoida + "%' or "
                + "city like '%" + strTopPlacesNoida + "%' or "
                + "address like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "address like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "address like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "address like '%" + strTopPlacesNoidaLastWord + "%' or "
                + "address like '%" + strTopPlacesNoida + "%' or "
                + "address like '%" + strTopPlacesNoida + "%' or "
                + "address like '%" + strTopPlacesNoida + "%' or "
                + "city like '%" + strTopPlacesNoida + "%' ";

        ResultSet rsNoida = cm.selectQuery(queryCityNoida);
        while (rsNoida.next()) {
            arrID.add(rsNoida.getString("id"));
        }
    }
    
    if ((strTopPlacesVaishali != "" && strTopPlacesVaishali != null)) {
        strTopPlacesVaishaliFirstWord = strTopPlacesVaishali.substring(0, 1);
        strTopPlacesVaishaliLastWord = strTopPlacesVaishali.substring(1);
        String queryCityPune = "select id from restro_details where "
                + "city like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "city like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "city like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "city like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "city like '%" + strTopPlacesVaishali + "%' or "
                + "city like '%" + strTopPlacesVaishali + "%' or "
                + "city like '%" + strTopPlacesVaishali + "%' or "
                + "address like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "address like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "address like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "address like '%" + strTopPlacesVaishaliLastWord + "%' or "
                + "address like '%" + strTopPlacesVaishali + "%' or "
                + "address like '%" + strTopPlacesVaishali + "%' or "
                + "address like '%" + strTopPlacesVaishali + "%' or "
                + "city like '%" + strTopPlacesVaishali + "%' ";

        ResultSet rsPune = cm.selectQuery(queryCityPune);
        while (rsPune.next()) {
            arrID.add(rsPune.getString("id"));
        }
    }
    
    /*
    *   Rating
    */
    
    String strOneRating = "";
    String strTwoRating = "";
    String strThreeRating = "";
    String strFourRating = "";
    String strFiveRating = "";
    
    strOneRating = request.getParameter("1star");
    strTwoRating = request.getParameter("2star");
    strThreeRating = request.getParameter("3star");
    strFourRating = request.getParameter("4star");
    strFiveRating = request.getParameter("5star");
    
    
    if ((strOneRating != "" && strOneRating != null)) {
        String queryOneRating = "select id from restro_details where "
                + "rating <= '" + strOneRating + "' ";

        ResultSet rsOneRating = cm.selectQuery(queryOneRating);
        while (rsOneRating.next()) {
            arrID.add(rsOneRating.getString("id"));
        }
    }
    
    if ((strTwoRating != "" && strTwoRating != null)) {
        int intTwoRating = Integer.parseInt(strTwoRating);
        intTwoRating -= 1;
        String queryTwoRating = "select id from restro_details where "
                + "rating > '" + intTwoRating + "' and "
                + "rating <= '" + strTwoRating + "' ";

        ResultSet rsTwoRating = cm.selectQuery(queryTwoRating);
        while (rsTwoRating.next()) {
            arrID.add(rsTwoRating.getString("id"));
        }
    }
    
    if ((strThreeRating != "" && strThreeRating != null)) {
        int intThreeRating = Integer.parseInt(strThreeRating);
        intThreeRating -= 1;
        String queryThreeRating = "select id from restro_details where "
                + "rating > '" + intThreeRating + "' and "
                + "rating <= '" + strThreeRating + "' ";

        ResultSet rsThreeRating = cm.selectQuery(queryThreeRating);
        while (rsThreeRating.next()) {
            arrID.add(rsThreeRating.getString("id"));
        }
    }
    
    if ((strFourRating != "" && strFourRating != null)) {
        int intFourRating = Integer.parseInt(strFourRating);
        intFourRating -= 1;
        String queryFourRating = "select id from restro_details where "
                + "rating > '" + intFourRating + "' and "
                + "rating <= '" + strFourRating + "' ";

        ResultSet rsFourRating = cm.selectQuery(queryFourRating);
        while (rsFourRating.next()) {
            arrID.add(rsFourRating.getString("id"));
        }
    }
    
    if ((strFiveRating != "" && strFiveRating != null)) {
        int intFiveRating = Integer.parseInt(strFiveRating);
        intFiveRating -= 1;
        String queryFiveRating = "select id from restro_details where "
                + "rating > '" + intFiveRating + "' and "
                + "rating <= '" + strFiveRating + "' ";

        ResultSet rsFiveRating = cm.selectQuery(queryFiveRating);
        while (rsFiveRating.next()) {
            arrID.add(rsFiveRating.getString("id"));
        }
    }
    
    
//    out.print(strOneRating+"\n<br />"
//            + ""+strTwoRating+"\n<br />"
//            + ""+strThreeRating+"\n<br />"
//            + ""+strFourRating+"\n<br />"
//            + ""+strFiveRating+"");
//    out.print(arrID);
    
    session.setAttribute("arrID", arrID);
    response.sendRedirect("../user_dashboard.jsp");
    }catch(Exception e){
        out.print("<script>window.location.href='error.jsp'</script>");
    }
%>
