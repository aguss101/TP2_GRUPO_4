<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .centered-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .color-box {
            width: 50px;
            height: 50px;
            display: inline-block;
            vertical-align: middle;
            background-color: #CC99FF; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered-container">
            <asp:LinkButton ID="lbRojo" runat="server" OnClick="lbRojo_Click">Rojo</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lbVerde" runat="server" OnClick="lbVerde_Click">Verde</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lbAzul" runat="server" OnClick="lbAzul_Click">Azul</asp:LinkButton>
            <br />
            <br />
            <asp:Panel ID="pColorSelected" runat="server" CssClass="color-box" Height="72px" Width="287px" BackColor="White"></asp:Panel>
            <br />
            <asp:Label ID="lblColorChange" runat="server" Text="Texto Coloreado"></asp:Label>
        </div>
    </form>
</body>
</html>
