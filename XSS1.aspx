<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS1.aspx.cs" Inherits="fullXSS.XSS1" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple XSS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <div>
                <h1><u>XSS - Nível 1 - Simple direct javascript</u></h1>
            </div>
            <div>
                <h1>XSS - Type 1: Reflected</h1>
                <div>
                    O XSS reflected re-write directamente para o DOM uma entrada de texto que veio do client-side.
                    <br />
                    Deve portanto fazer o encoding (html) e/ou o sanitize com uma white list (regular expression por exemplo ou dicionário)
                </div>
            </div>
            <div style="margin-top:25px; color:red; margin-bottom:10px">
                Faça aparecer uma pop-up com um texto a sua escolha!
            </div>
            <span style="margin-top: 25px">Pesquise:</span>
            <asp:TextBox ID="TextBox1_Search" runat="server" Width="267px"></asp:TextBox>

            <asp:Button runat="server" Text="Pesquisar" ID="button_pesquisar" OnClick="button_pesquisar_Click" />
            <div style="margin-top: 25px">
                <asp:Label ID="Label1_Result" runat="server"></asp:Label>
            </div>
            <div style="margin-top: 25px">
                <asp:Label ID="Label2_Result" runat="server"></asp:Label>
            </div>
        </div>


    </form>
</body>
</html>

