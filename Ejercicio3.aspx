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
            height: 302px;
        }
        .color-box {
            width: 50px;
            height: 50px;
            display: inline-block;
            vertical-align: middle;
            background-color: #CC99FF; 
        }
        .auto-style1 {
            width: 33%;
        }
        .auto-style2 {
            width: 279px;
        }
        .colourRed, .colourBlue, .colourGreen {
            height: 23px;
            width: 373px;
            text-align: center;
            background-color: #FF66FF;
        }
        .colourRed:hover {
            background-color:red;
        }
        .linkColour {
            
        }
        .linkColour:link {
            color:#993399;
            text-decoration: none;
        }
        .colourBlue:hover {
            background-color:blue;
        }
        .colourGreen:hover {
            background-color:green;
        }
        .auto-style4 {
            width: 279px;
            height: 23px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            height: 23px;
            width: 200px;
        }
        .auto-style7 {
            width: 373px;
        }
        .auto-style8 {
            width: 200px;
            height: 76px;
        }
        .auto-style9 {
            width: 373px;
            height: 76px;
        }
        .auto-style10 {
            width: 279px;
            height: 76px;
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
        .txtColoured {
            width: 373px;
            text-align: center;
            background-color: #FF66FF;
        }
        .auto-style11 {
            width: 200px;
            height: 22px;
        }
        .auto-style13 {
            width: 279px;
            height: 22px;
        }
        #form1 {
            width: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Volver" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Volver" Width="150px" OnClick="Volver_Click"/>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="colourRed">
                        <asp:LinkButton ID="lbRojo" CssClass="linkColour" runat="server" OnClick="lbRojo_Click">Rojo</asp:LinkButton>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="colourBlue">
                        <asp:LinkButton ID="lbAzul" CssClass="linkColour" runat="server" OnClick="lbAzul_Click">Azul</asp:LinkButton>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="colourGreen">
                        <asp:LinkButton ID="lbVerde" CssClass="linkColour" runat="server" OnClick="lbVerde_Click">Verde</asp:LinkButton>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Panel ID="pColorSelected" runat="server" CssClass="color-box" Height="72px" Width="287px" BackColor="White"></asp:Panel>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="txtColoured">
                        <asp:Label ID="lblColorChange" runat="server" Text="Texto Coloreado"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
