//VALIDATION FOR EMAIL
function validateEmail() {
    var patern = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
    var emailEntered = document.getElementById("email").value;
    if (patern.test(emailEntered) == false) {
        res = "Enter a valid email address";
        document.getElementById("spanEmail").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanEmail").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//VALIDATION FOR NAME
function validateName() {
    var pattern = /^([A-Za-z\ ]){1,}$/;
    var nameEntered = document.getElementById("name").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanName").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanName").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
    if (nameEntered.length == 0) {
        res = "Name can not be blank";
        document.getElementById("spanName").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanName").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//VALIDATION FOR Theme
function validateTheme1() {
    var pattern = /^([A-Za-z\ ]){1,}$/;
    var nameEntered = document.getElementById("theme1").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanTheme1").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme1").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
    if (nameEntered.length == 0) {
        res = "Theme can not be blank";
        document.getElementById("spanTheme1").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme1").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//VALIDATION FOR Theme
function validateTheme2() {
    var pattern = /^([A-Za-z\ ]){1,}$/;
    var nameEntered = document.getElementById("theme2").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanTheme2").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme2").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
    if (nameEntered.length == 0) {
        res = "Theme can not be blank";
        document.getElementById("spanTheme2").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme2").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//VALIDATION FOR Theme Not Required
function validateTheme3() {
    var pattern = /^([A-Za-z\ ]){0,}$/;
    var nameEntered = document.getElementById("theme3").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanTheme3").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme3").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
//    if (nameEntered.length == 0) {
//        res = "Theme can not be blank";
//        document.getElementById("spanTheme3").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanTheme3").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
}


//VALIDATION FOR Theme Not Required
function validateTheme4() {
    var pattern = /^([A-Za-z\ ]){0,}$/;
    var nameEntered = document.getElementById("theme4").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanTheme4").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanTheme4").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
//    if (nameEntered.length == 0) {
//        res = "Theme can not be blank";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
}

//VALIDATION FOR Special Today
function validateSpecialToday() {
    var pattern = /^([A-Za-z\ ]){0,}$/;
    var nameEntered = document.getElementById("specialToday").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanSpecialToday").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanSpecialToday").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
//    if (nameEntered.length == 0) {
//        res = "Theme can not be blank";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
}

//VALIDATION FOR Offers and Discounts
function validateOffersAndDiscounts() {
    var pattern = /^([A-Za-z\ ]){0,}$/;
    var nameEntered = document.getElementById("offersAndDiscounts").value;
    if (pattern.test(nameEntered) == false) {
        res = "Use only alphabets";
        document.getElementById("spanOffersAndDiscounts").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanOffersAndDiscounts").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
//    if (nameEntered.length == 0) {
//        res = "Theme can not be blank";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanTheme4").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
}

//VALIDATION FOR NUMBER
function validateNumber() {
    var pattern = /^([6-9]){1}([0-9]){9}$/;
    var numberEntered = document.getElementById("number").value;
    if (pattern.test(numberEntered) == false) {
        res = "Enter a valid number";
        document.getElementById("spanNumber").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanNumber").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}
//
//function validateLanlineNumber() {
//    var pattern = /^[0-9]\d{2,4}-\d{6,8}$/;
//    var numberEntered = document.getElementById("number").value;
//    if (pattern.test(numberEntered) == false) {
//        res = "Enter a valid number"
//        document.getElementById("spanNumber").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanNumber").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
//}

//URL VALIDATION
//  /\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i
//  (https?)://)?(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}\.?
//  /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/

function validateURL() {
    var pattern = /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/;
    var urlEntered = document.getElementById("url").value;
    if (pattern.test(urlEntered) == false) {
        res = "Enter a valid url";
        document.getElementById("spanURL").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanURL").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//RATING VALIDATION

function validateRating() {
    var pattern = /^([0-4]){1}([.]){1}([0-9]){1}$/;
    var urlEntered = document.getElementById("rating1").value;
    if (pattern.test(urlEntered) == false) {
        res = "Enter a valid rating";
        document.getElementById("spanRating").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanRating").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}


//LATITUDE AND LONGITITUDE VALIDATION

function validateLatLong() {
    var pattern = /^([0-9\-]){2,3}([.]){1}([0-9]){1,9}$/;
    var urlEntered = document.getElementById("latLong").value;
    if (pattern.test(urlEntered) == false) {
        res = "Enter a valid Lat-Long";
        document.getElementById("spanLatLong").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanLatLong").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}


//ADDRESS VALIDATION
function validateAddress() {
    var pattern = /^[a-zA-Z0-9\s,'-]*$/;
    var addressEntered = document.getElementById("address").value;
    if (pattern.test(addressEntered) == false) {
        res = "Enter a address";
        document.getElementById("spanAddress").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanAddress").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}

//CITY VALIDATION
function validateCity() {
    var pattern = /^[a-zA-Z\ ]+(?:[\s-][a-zA-Z\ ]+)*$/;
    var cityEntered = document.getElementById("city").value;
    if (pattern.test(cityEntered) == false) {
        res = "Enter a valid entry";
        document.getElementById("spanCity").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanCity").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}
//
////STATE VALIDATION
//function validateState() {
//    var pattern = /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
//    var stateEntered = document.getElementById("state").value;
//    if (pattern.test(stateEntered) == false) {
//        res = "Enter a good state"
//        document.getElementById("spanState").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanState").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }
//}



//PHONENO OR EMAIL VALIDATION
function validateLogin() {
    var username = document.getElementById("uname").value;
    if (username.isnumeric()) {
        var pattern = /^[0-9]\d{2,4}-\d{6,8}$/;
        var numberEntered = document.getElementById("number").value;
        if (pattern.test(numberEntered) == false) {
            res = "Enter a valid number";
            document.getElementById("spanNumber").innerHTML = res;
            document.getElementById("submit").disabled = true;
        }
        else {
            res = "";
            document.getElementById("spanNumber").innerHTML = res;
            document.getElementById("submit").disabled = false;
        }
    }
    else {
        var patern = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
        var emailEntered = document.getElementById("email").value;
        if (patern.test(emailEntered) == false) {
            res = "Enter a valid email address";
            document.getElementById("spanEmail").innerHTML = res;
            document.getElementById("submit").disabled = true;
        }
        else {
            res = "";
            document.getElementById("spanEmail").innerHTML = res;
            document.getElementById("submit").disabled = false;
        }
    }
}


//ZIPCODE VALIDATION
function validateZipCode() {
//    var pattern = /^([1-9]){6}$/;
//    var zipCodeEntered = document.getElementById("zipcode").value;
////    if (pattern.test(zipCodeEntered) == false) {
//        res = "Enter a valid zipcode";
//        document.getElementById("spanZipCode").innerHTML = res;
//        document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanZipCode").innerHTML = res;
//        document.getElementById("submit").disabled = false;
//    }

    var zipCodeEntered = document.getElementById("zipcode").value;
    var arrCode = [];
    arrCode = zipCodeEntered.split("");
    if (arrCode.length != 6) {
        res = "Enter a valid zipcode";
        document.getElementById("spanZipCode").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanZipCode").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }

}

/*
 * login username validation 
 */
//function validateUsername(){
//    var username = document.getElementById("uname").value;
//        alert(username);
//    if(isNaN(username)){
//        alert(username);
//    }else{
//        alert(username);
//    }
//}