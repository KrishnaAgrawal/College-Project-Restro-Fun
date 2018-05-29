//VALIDATION FOR EMAIL
function validateEmail() {
    var patern = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
    var emailEntered = document.getElementById("emailaddress").value;
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
/*
 * /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
 * /^([a-zA-Z\ ]){1,}$/
 */
function validateName() {
var pattern = /^[a-zA-Z\ ]{1,}$/;
    var nameEntered = document.getElementById("name").value;
    
    if (!pattern.test(nameEntered)) {
        res = "Only Characters are allowed.";
        document.getElementById("customername").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("customername").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
    
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
function validateURL() {
    var pattern = '(https?)://)?(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}\.?';
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
        res = "Enter a valid rating less than 5.0";
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
        res = "Enter a valid Lat-Long"
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
    var pattern = /^[a-zA-Z0-9\s\ \.\-,'-]*$/;
    var addressEntered = document.getElementById("address").value;
    if (pattern.test(addressEntered) == false) {
        res = "Enter a valid address."
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
        res = "Enter a city";
        document.getElementById("spanCity").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanCity").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }
}


//State VALIDATION
function validateState() {
    var pattern = /^[a-zA-Z\ ]+(?:[\s-][a-zA-Z\ ]+)*$/;
    var cityEntered = document.getElementById("state").value;   
    if (pattern.test(cityEntered) == false) {
        res = "Enter a state";
        document.getElementById("spanState").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanState").innerHTML = res;
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
    if(username.isnumeric()){
        var pattern = /^[0-9]\d{2,4}-\d{6,8}$/;
        var numberEntered = document.getElementById("number").value;
        if (pattern.test(numberEntered) == false) {
            res = "Enter a valid number"
            document.getElementById("spanNumber").innerHTML = res;
            document.getElementById("submit").disabled = true;
        }
        else {
            res = "";
            document.getElementById("spanNumber").innerHTML = res;
            document.getElementById("submit").disabled = false;
        }
    }
    else{
        var patern = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
        var emailEntered = document.getElementById("email").value;
        if (patern.test(emailEntered) == false) {
            res = "Enter a valid email address"
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

//    var patern = /^([1-9]){6}$/;
//    var zipCodeEntered = document.getElementById("zipcode").value;
//    if (patern.test(zipCodeEntered) == false) {
//        res = "Enter a valid zipcode";
//        document.getElementById("spanZipCode").innerHTML = res;
//            document.getElementById("submit").disabled = true;
//    }
//    else {
//        res = "";
//        document.getElementById("spanZipCode").innerHTML = res;
//            document.getElementById("submit").disabled = false;
//    }
function validateZipCode() {
    var zipCodeEntered = document.getElementById("zipcode").value;
    var arrCode = [];
    arrCode = zipCodeEntered.split("");    
    if (arrCode.length != 6) {
        res = "Enter a valid zipcode";
        document.getElementById("spanZip").innerHTML = res;
        document.getElementById("submit").disabled = true;
    }
    else {
        res = "";
        document.getElementById("spanZip").innerHTML = res;
        document.getElementById("submit").disabled = false;
    }

}
 
/*
 * login username validation 
 */
function validateUsername(){
    var username = document.getElementById("uname").value;
    if(isNaN(username)){
        //  email validation
        var patern = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]){2,3}$/;
        var emailEntered = username;
        if (patern.test(emailEntered) == false) {
            res = "Enter a valid email address";
            document.getElementById("spanUsername").innerHTML = res;
            document.getElementById("submit").disabled = true;
        }
        else {
            res = "";
            document.getElementById("spanUsername").innerHTML = res;
            document.getElementById("submit").disabled = false;
        }
    }else{
        //  phone number validation
        var pattern = /^([6-9]){1}([0-9]){9}$/;
        var numberEntered = username;
        if (pattern.test(numberEntered) == false) {
            res = "Enter a valid number";
            document.getElementById("spanUsername").innerHTML = res;
            document.getElementById("submit").disabled = true;
        }
        else {
            res = "";
            document.getElementById("spanUsername").innerHTML = res;
            document.getElementById("submit").disabled = false;
        }
    }
}