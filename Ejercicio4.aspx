<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 4</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 81px;
        }
        .auto-style2 {
            width: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Usuario</td>
                    <td>
                        <asp:TextBox ID="usernameTxtBox" runat="server" Width="126px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Contraseña</td>
                    <td>
                        <asp:TextBox ID="passwordTxtBox" runat="server" Width="126px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="entryButton" runat="server" Text="Iniciar Sesión" OnClick="entryButton_Click" Width="264px" />
        </div>
        <asp:Label ID="welcomeMessage" runat="server" Text="BIENVENIDO USUARIO" Visible="False"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Ej1" runat="server" OnClick="Ej1_Click" Text="Ejercicio1" />
        </p>
    </form>
</body>
</html>
