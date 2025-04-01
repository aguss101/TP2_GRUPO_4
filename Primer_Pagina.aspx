<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Primer_Pagina.aspx.cs" Inherits="TP2_GRUPO_4.Primer_Pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lbl2" runat="server" Text="Ingrese su nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
        <p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
