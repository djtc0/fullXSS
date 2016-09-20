﻿
function loadData(url, outputElement) {
    var xhttp;
    if (window.XMLHttpRequest) {
        // code for modern browsers
        xhttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
           
            document.getElementById(outputElement).innerHTML = this.responseText;
            //document.getElementById(outputElement).innerHTML = "<br/>";
            //document.getElementById(outputElement).innerText = this.responseText;
        }
    };
    xhttp.open("GET", url, true);
    xhttp.send();
}
