<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 2</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 268px;
        }

        .auto-style3 {
            width: 274px;
            height: 81px;
            color: #660066;
            background-color:#FF66FF;
            text-align: left;
            padding-left: 5px;
        }
        .auto-style4 {
            height: 81px;
            color: #660066;
            background-color:#FF66FF;
        }

        .auto-style5 {
            width: 274px;
            height: 61px;
            color: #660066;
            background-color:#FF66FF;
            text-align: left;
            padding-left: 5px;
        }
        .auto-style6 {
            height: 61px;
            color: #660066;
            background-color:#FF66FF;
        }
        .auto-style8 {
            width: 274px;
            height: 30px;
            color: #660066;
            background-color:#FF66FF;
            text-align: left;
            padding-left: 5px;
        }
        .auto-style9 {
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
        .auto-style10 {
            height: 11px;
        }
        .auto-style11 {
            height: 30px;
            text-align:center;
            background-color:#FF66FF;
        }
    </style>
</head>
<body style="height: 421px; width: 627px; margin-right: 0px; margin-bottom: 2px;">
    <div>
    <form id="form2" runat="server">
        
            <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">
        
            <asp:Button ID="Volver" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" OnClick="Ej1_Click" Text="Volver" Width="257px" />
            </td>
    </tr>
    <tr>
        <td class="auto-style8">Nombre:</td>
        <td class="auto-style8">
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Apellido</td>
        <td class="auto-style8">
            <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Ciudad</td>
        <td class="auto-style6">
            <asp:DropDownList ID="zoneDropdownList" runat="server">
                <asp:ListItem>Gral Pacheco</asp:ListItem>
                <asp:ListItem>San Miguel</asp:ListItem>
                <asp:ListItem>Boedo</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Temas:</td>
        <td class="auto-style4">
            <asp:CheckBoxList ID="themeCheckBoxList" runat="server" OnSelectedIndexChanged="themeCheckBoxList_SelectedIndexChanged" ForeColor="#660066"
BackColor="#FF66FF" >
                <asp:ListItem>Ciencias</asp:ListItem>
                <asp:ListItem>Literatura</asp:ListItem>
                <asp:ListItem>Historia</asp:ListItem>
            </asp:CheckBoxList>
            
        </td>
    </tr>


    
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style10">
            
        </td>
    </tr>


    
    <tr>
        <td class="auto-style8">
                <asp:Label ID="tittleLabel" runat="server" Text="Label">RESUMEN:</asp:Label>
        

        </td>
        <td class="auto-style11">
            <asp:Button ID="Button1" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Mostrar Resumen" Width="270px" OnClick="Button1_Click1" />
            
        </td>
    </tr>


    
    <tr>
        <td class="auto-style8">
            <asp:Label ID="nameLabel" runat="server" Text="Label">Nombre: </asp:Label>
            <asp:Label ID="responseNameLabel" runat="server" Text="Label" Visible="False">response</asp:Label>
        </td>
        <td class="auto-style9">
            &nbsp;
        </td>
    </tr>


    
    <tr>
        <td class="auto-style8">
            <asp:Label ID="surnameLabel" runat="server" Text="Label">Apellido: </asp:Label>
            <asp:Label ID="responseSurnameLabel" runat="server" Text="Label" Visible="False">response</asp:Label>
        </td>
        <td class="auto-style9">
            &nbsp;</td>
    </tr>


    
    <tr>
        <td class="auto-style8">
            <asp:Label ID="zoneLabel" runat="server" Text="Label">Zone: </asp:Label>
            <asp:Label ID="responseZoneLabel" runat="server" Text="Label" Visible="False">reponse</asp:Label>
        </td>
        <td class="auto-style9">
            &nbsp;</td>
    </tr>


    
    <tr>
        <td class="auto-style8">
            <asp:Label ID="themesLabel" runat="server" Text="Label">Temas: </asp:Label>
            <asp:Label ID="responseThemesLabel" runat="server" Text="response" Visible="False"></asp:Label>
        </td>
        <td class="auto-style9">
            </td>
    </tr>


    
</table>
            
    </form>
    </div>
</body>
</html>
