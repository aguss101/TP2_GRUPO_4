<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 4</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 11px;
        }
        .literal-class {
            color: red;
        }
        html {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }
        table {
            background-color:#993399;
            border: 0px solid #333;
            border-radius: 10px;
            border-collapse: separate;
            overflow: hidden;
        }
        .title {
            margin-top: 5px; 
            margin-bottom: 10px;
            color:#FF66FF;
            width: 187px;
        }
        .lbl-user {
            text-align: center;
            color: #660066;
            background-color:#FF66FF;
        }
        .txtbox-class {
            text-align:center;
            background-color:#FF66FF;
            width: 100px;
        }
        .auto-style6 {
            text-align: center;
            background-color: #FF66FF;
            width: 184px;
        }
        .auto-style7 {
            width: 184px;
        }
        .auto-style8 {
            text-align: center;
            color: #660066;
            background-color: #FF66FF;
            width: 184px;
        }
    </style>
</head>
<body style="width: 215px; height: 271px; margin-right: 0px; margin-bottom: 0px">
    <form id="form1" runat="server">
        <div style="margin: 0px; width: 218px; height: 273px;">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Volver" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Width="150px" OnClick="Button1_Click" Text="Volver" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
            <h2 class="title">Inicio de Sesión</h2>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
            <label>Usuario</label></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">
            <asp:TextBox ID="usernameTxtBox" runat="server" OnTextChanged="usernameTxtBox_TextChanged" Width="179px"></asp:TextBox></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
            <label>Contraseña</label></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">
            <asp:TextBox ID="passwordTxtBox" runat="server" TextMode="Password" Width="179px"></asp:TextBox></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Literal ID="attemptsShown" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">

            <asp:Button ID="entryButton" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Iniciar Sesión" OnClick="entryButton_Click" /></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
