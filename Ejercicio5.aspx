<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 5</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 81px;
            font-size: 28px;
            font-weight: bold;
            padding-bottom: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .auto-style2 {
            width: 126px;
            font-size: 14px;
            font-weight: bold;
        }
        .auto-style3 {
            height: 60px;
            width: 272px;
        }
        .auto-style4 {
            width: 272px;
            background-color:#FF66FF;
            border: none;
            color: #993399;
        }
        .auto-style7 {
            height: 60px;
            width: 12px;
        }
        .auto-style8 {
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
            border-collapse: collapse;
            overflow: hidden;
        }
        .title {
            margin-top: 5px; 
            margin-bottom: 10px;
            color:#FF66FF;
            width: 187px;
        }
        .cb-list{
            width: 272px;
            background-color:#FF66FF;
            font-weight: bold;
            color:#FF66FF;
            font-size: 12px;
        }
        .top-border {
            width: 272px;
            background-color:#FF66FF;
            color: #993399;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        .bottom-border {
            width: 272px;
            background-color:#FF66FF;
            color: #993399;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 272px;
            background-color: #FF66FF;
            color: #993399;
            height: 20px;
            padding-left: 10px;
            font-weight: bold;
        }
        .auto-style11 {
            height: 84px;
        }
        .auto-style12 {
            width: 272px;
            background-color: #FF66FF;
            font-weight: bold;
            color: #FF66FF;
            font-size: 12px;
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style3">
            <asp:Button ID="Volver" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" OnClick="Ej1_Click" Text="Volver" Width="257px" />
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="title">
                        <asp:Label class="auto-style1" runat="server" ID="configabel" Text="Elija su Configuración"> </asp:Label> 
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr style="height: 60px;">
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="top-border">
                        <asp:Label class="auto-style2" runat="server" ID="ramLabel" Text="Seleccione una cantidad de memoria:"> </asp:Label> 
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlRam" runat="server" style="margin-left: 100px;">
                            <asp:ListItem>2GB</asp:ListItem>
                            <asp:ListItem>4GB</asp:ListItem>
                            <asp:ListItem>6GB</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr style="height: 60px;">
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label class="auto-style2" runat="server" ID="extraLabel" Text="Seleccione accesorios:"> </asp:Label> 
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        </td>
                    <td class="auto-style12">
                        <asp:CheckBoxList ID="cblExtras" runat="server" style="margin-left: 100px;" Width="149px" Height="79px">
                            <asp:ListItem>Monitor LCD</asp:ListItem>
                            <asp:ListItem>HD 500GB</asp:ListItem>
                            <asp:ListItem>Grabador DVR</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style11">
                        </td>
                </tr>
                <tr style="height: 60px;">
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="resumeButton" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Calcular Precio" OnClick="resumeButton_Click" Width="150px" style="margin-left: 100px;" />
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        </td>
                    <td class="auto-style10">
                        <asp:Label ID="resumePrice" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="bottom-border">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
