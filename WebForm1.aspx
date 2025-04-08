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
        .auto-style8 {
            width: 87px;
            height: 35px;
        }
        .auto-style9 {
            width: 49px;
            height: 35px;
        }
        .auto-style16 {
            width: 236px;
            height: 30px;
        }
        .auto-style17 {
            width: 114px;
            height: 30px;
        }
        .auto-style18 {
            width: 87px;
            height: 30px;
        }
        .auto-style19 {
            width: 49px;
            height: 30px;
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
        .lblProductClass {
            height: 30px;
            text-align: center;
            color: #660066;
            background-color:#FF66FF;

        }
        .tbProductClass {
            background-color:#FF66FF;
            width: 114px;
            height: 30px;
        }
        .lblTableClass {
            color: #FF66FF;
            text-align: center;
        }
        .auto-style21 {
            width: 236px;
            height: 44px;
        }
        .auto-style22 {
            width: 114px;
            height: 44px;
        }
        .auto-style23 {
            width: 87px;
            height: 44px;
        }
        .auto-style24 {
            width: 49px;
            height: 44px;
        }
        .auto-style26 {
            width: 236px;
        }
        .auto-style27 {
            height: 30px;
            text-align: center;
            color: #660066;
            background-color: #FF66FF;
            width: 236px;
        }
    </style>
</head>
<body style="height: 289px; margin-bottom: 19px">
    <form id="form1" runat="server">
        <div style="height: 284px">
             <table class="auto-style1">
     <tr>
         <td class="auto-style26">
             <asp:Button ID="Volver" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" runat="server" OnClick="Volver_Click" Text="Volver" Width="257px" />
         </td>
         <td class="auto-style7"></td>
         <td class="auto-style8"></td>
         <td class="auto-style7"></td>
         <td class="auto-style9"></td>
     </tr>
     <tr>
         <td class="auto-style27">
             <asp:Label ID="lblProduct" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
         </td>
         <td class="tbProductClass">
             <asp:TextBox ID="tbProduct1" runat="server" Width="111px"></asp:TextBox>
         </td>
         <td class="lblProductClass">
             <asp:Label ID="lblAmount" runat="server" Text="Cantidad"></asp:Label>
         </td>
         <td class="tbProductClass">
             <asp:TextBox ID="tbAmount" runat="server" Width="111px"></asp:TextBox>
         </td>
         <td class="auto-style5">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style27">
             <asp:Label ID="lblProduct2" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
         </td>
         <td class="tbProductClass">
             <asp:TextBox ID="tbProduct2" runat="server" Width="112px"></asp:TextBox>
         </td>
         <td class="lblProductClass">
             <asp:Label ID="lblAmount2" runat="server" Text="Cantidad"></asp:Label>
         </td>
         <td class="tbProductClass">
             <asp:TextBox ID="tbAmount2" runat="server" Width="110px"></asp:TextBox>
         </td>
         <td class="auto-style19"></td>
     </tr>
     <tr>
         <td class="auto-style16"></td>
         <td class="auto-style17"></td>
         <td class="auto-style18"></td>
         <td class="auto-style17"></td>
         <td class="auto-style19"></td>
     </tr>
     <tr>
         <td class="auto-style26">
             <asp:Button ID="btnTable" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" OnClick="btnTable_Click" Text="Generar Tabla" Width="257px" />
         </td>
         <td class="auto-style2">
             <asp:Button ID="Reset" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" OnClick="Reset_Click" Text="Resetear tabla" />
         </td>
         <td class="auto-style4">&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style5">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style26">
             <asp:Label class="lblTableClass" ID="lblTable" runat="server"></asp:Label>
         </td>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style4">&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style5">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style21"></td>
         <td class="auto-style22"></td>
         <td class="auto-style23"></td>
         <td class="auto-style22"></td>
         <td class="auto-style24"></td>
     </tr>
 </table>
        </div>
    </form>
</body>
</html>
