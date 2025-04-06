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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr style="height: 60px;">
                    <td>
                        <asp:Label class="auto-style1" runat="server" ID="configabel" Text="Elija su Configuración"> </asp:Label> 
                    </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        <asp:Label class="auto-style2" runat="server" ID="ramLabel" Text="Seleccione una cantidad de memoria:"> </asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlRam" runat="server" style="margin-left: 100px;">
                            <asp:ListItem>2GB</asp:ListItem>
                            <asp:ListItem>4GB</asp:ListItem>
                            <asp:ListItem>6GB</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        <asp:Label class="auto-style2" runat="server" ID="extraLabel" Text="Seleccione accesorios:"> </asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBoxList ID="cblExtras" runat="server" style="margin-left: 100px;">
                            <asp:ListItem>Monitor LCD</asp:ListItem>
                            <asp:ListItem>HD 500GB</asp:ListItem>
                            <asp:ListItem>Grabador DVR</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr style="height: 60px;">
                    <td>
                        <asp:Button ID="resumeButton" runat="server" Text="Calcular Precio" OnClick="resumeButton_Click" Width="100px" style="margin-left: 100px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="resumePrice" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Ej1" runat="server" OnClick="Ej1_Click" Text="Ejercicio 1" />
        </p>
    </form>
</body>
</html>
