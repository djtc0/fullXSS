<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS3.aspx.cs" Inherits="fullXSS.XSS3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XSS3 no direct alert :) a little different than XSS2</title>
   
    <script>
        function getImage(num) {
            var html = "Image " + parseInt(num) + "<br>";
            html += "<img src='/images/" + num + ".png' />";
            document.getElementById("spanResult").innerHTML = html;
           
            window.location.hash = num;
        }

        window.onload = function () {
            getImage(self.location.hash.substr(1) || "0");
        }

        window.onhashchange = function ()
        {
            getImage(self.location.hash.substr(1));
        }
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <div>
                <h1><u>XSS - Nível 3 - Javascript sinks reloaded</u></h1>
            </div>
            <div>
                <h1>XSS - Type 3: Dom Based</h1>
                <div>Muito similar ao anterior no entanto mais fácil por um lado mais tricky por outro...
                    <br />
                (veja o DOM (e não só...) e leia novamente o enunciado)
                </div>
            </div>
            <div style="margin-top: 25px; color: red; margin-bottom: 10px">
                Escolha uma imagem!:
            <div>
                <select id="Select1" name="image" onchange="getImage(this.value)">
                    <option value="0" selected="selected" >0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
            </div>
                <div>
                    <span id="spanResult"></span>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
