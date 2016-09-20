<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS2.aspx.cs" Inherits="fullXSS.XSS2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XSS no direct alert :) a little deeper though</title>
    <script src="scripts/myScripts.js"></script>
    <script>

        function getData() {
            loadData("xss2.aspx?data=1", "spanResult");
        }
    </script>

</head>
<body onload="getData();">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <div>
                <h1><u>XSS - Nível 2 - Javascript sinks</u></h1>
            </div>
            <div>
                <h1>XSS - Type 2: Stored</h1>
                <div>O XSS armazenado é guardado no back-end (b.d., ficheiros) e depois re-escrito no DOM para o mesmo e/ou para diferentes clientes.</div>
                <div>Repare no código js que faz o pedido ajax (xmlHttpRequest) e o elemento para onde e como é escrito o texto que vem do servidor para cada nova entrada(linha) do fórum</div>
            </div>
            <div style="margin-top:25px; color:red; margin-bottom:10px">
                Faça aparecer uma pop-up com um texto a sua escolha!
                <br />
                (se não conseguir, veja o DOM e leia novamente o enunciado)<br />
                (deverá pensar um pouco mais além de que para o exemplo XSS1 e usar mais ainda
                <br />
                os seus conhecimentos de HTML e JS! )</div>
            <div>
                <asp:TextBox ID="TextBox1Forum" runat="server" Height="54px" TextMode="MultiLine" Width="370px"></asp:TextBox>
                <asp:Button ID="Button1_AddPosta" runat="server" Text="Post" OnClick="Button1_AddPosta_Click" />
                <asp:Button ID="Button2_LimparForum" runat="server" Text="Limpar!" OnClick="Button2_LimparForum_Click" />
            </div>
            
            <div>
                <span id="spanResult"></span>
            </div>
        </div>
    </form>
</body>
<script>
</script>
</html>
