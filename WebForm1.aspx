<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP2_GRUPO_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 283px;
        }
        .auto-style2 {
            width: 114px;
        }
        .auto-style3 {
            width: 256px;
        }
        .auto-style4 {
            width: 87px;
        }
        .auto-style5 {
            width: 49px;
        }
        .auto-style6 {
            width: 256px;
            height: 35px;
        }
        .auto-style7 {
            width: 114px;
            height: 35px;
        }
        .auto-style8 {
            width: 87px;
            height: 35px;
        }
        .auto-style9 {
            width: 49px;
            height: 35px;
        }
        .auto-style10 {
            height: 35px;
        }
    </style>
</head>
<body style="height: 201px; margin-bottom: 19px">
    <form id="form1" runat="server">
        <div style="height: 13px">

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style7"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblProduct" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbProduct1" runat="server" Width="111px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblAmount" runat="server" Text="Cantidad"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbAmount" runat="server" Width="111px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Ej2" runat="server" OnClick="Ej2_Click" Text="Ejercicio 2" />
                </td>
                <td>
                    <asp:Button ID="Ej4" runat="server" OnClick="Ej4_Click" Text="Ejercicio 4" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblProduct2" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbProduct2" runat="server" Width="112px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblAmount2" runat="server" Text="Cantidad"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbAmount2" runat="server" Width="110px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Ej3" runat="server" OnClick="Ej3_Click" Text="Ejercicio 3" />
                </td>
                <td>
                    <asp:Button ID="Ej5" runat="server" OnClick="Ej5_Click" Text="Ejercicio 5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnTable" runat="server" OnClick="btnTable_Click" Text="Generar Tabla" Width="143px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" Text="Resetear tabla" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblTable" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
