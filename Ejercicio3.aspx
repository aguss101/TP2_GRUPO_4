<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
            <a href="#" onclick="cambiarColor('Red'); return false;">Rojo</a> <br/>
            <a href="#" onclick="cambiarColor('Blue'); return false;">Azul</a> <br/>
            <a href="#" onclick="cambiarColor('Green'); return false;">Verde</a> <br/> <br/>    
            
            <asp:Label ID="lbl1" runat="server" Text="Texto coloreado"></asp:Label>
        
            <script type="text/javascript">
                function cambiarColor(color) 
                {
                    document.getElementById('<%= lbl1.ClientID %>').style.color = color;
                }
            </script>
            <asp:Button ID="BtnVolver" runat="server" OnClick="BtnVolver_Click" Text="Volver" />
        </form>
    </body>
</html>
