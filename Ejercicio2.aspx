<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejercicio 2</title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            height: 268px;
        }
        .auto-style2 {
            width: 274px;
        }
        .auto-style3 {
            width: 274px;
            height: 81px;
        }
        .auto-style4 {
            height: 81px;
        }
        #form2 {
            height: 7px;
            width: 1210px;
            margin-top: 0px;
        }
    </style>
</head>
<body style="height: 634px">
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
    <tr>
        <td class="auto-style2">Nombre:</td>
        <td>
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Apellido</td>
        <td>
            <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Ciudad</td>
        <td>
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
            <asp:CheckBoxList ID="themeCheckBoxList" runat="server">
                <asp:ListItem>Ciencias</asp:ListItem>
                <asp:ListItem>Literatura</asp:ListItem>
                <asp:ListItem>Historia</asp:ListItem>
            </asp:CheckBoxList>
            
        </td>
    </tr>


    
</table>
            <div><asp:Button ID="Button1" runat="server" Text="Mostrar Resumen" Width="635px" OnClick="Button1_Click1" /></div>
            <div>
                <asp:Label ID="tittleLabel" runat="server" Text="Label">RESUMEN:</asp:Label>
            </div>
                <asp:Label ID="nameLabel" runat="server" Text="Label">Nombre: </asp:Label>
                <asp:Label ID="responseNameLabel" runat="server" Text="Label" Visible="False">response</asp:Label>
        </div>
            

            

        <p>
                <asp:Label ID="surnameLabel" runat="server" Text="Label">Apellido: </asp:Label>
                <asp:Label ID="responseSurnameLabel" runat="server" Text="Label" Visible="False">response</asp:Label>
                </p>
        <p>
                <asp:Label ID="zoneLabel" runat="server" Text="Label">Zone: </asp:Label>
                <asp:Label ID="responseZoneLabel" runat="server" Text="Label" Visible="False">reponse</asp:Label>
        </p>
        <p>
        <asp:Label ID="themesLabel" runat="server" Text="Label">Temas: </asp:Label>
        <asp:Label ID="responseThemesLabel" runat="server" Text="response" Visible="False"></asp:Label>
</p>
            

            

        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Ej1" runat="server" OnClick="Ej1_Click" Text="Ejercicio1" />
        </p>
            

            

    </form>
</body>
</html>
