<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 4</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 50px;">
            <h2>Inicio de Sesión</h2>
            <label>Usuario:</label><br />
            <asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox><br /><br />

            <label>Contraseña:</label><br />
            <asp:TextBox ID="passwordTxtBox" runat="server" TextMode="Password"></asp:TextBox><br /><br />

            <asp:Button ID="entryButton" runat="server" Text="Iniciar Sesión" OnClick="entryButton_Click" /><br /><br />
        </div>
    </form>
</body>
</html>
