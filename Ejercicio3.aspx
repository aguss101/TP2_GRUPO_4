<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP2_GRUPO_4.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
            <title>Ejercicio 5</title>
    <style type="text/css">

        .auto-style1 {
            font-size: 14px;
            margin-bottom: 30px;
        }
       </style>
    </head>
    <body>

            <form id="form1" runat="server">
            <div>
                <a href="#" onclick="cambiarColor('Red'); return false;">Rojo</a> <br/>
                <a href="#" onclick="cambiarColor('Blue'); return false;">Azul</a> <br/>
                <a href="#" onclick="cambiarColor('Green'); return false;">Verde</a> <br/> <br/>    

                        <asp:Label  ID="lbl1" runat="server" Text="Texto coloreado"></asp:Label>

                
                <script type="text/javascript">
                    function cambiarColor(color) 
                    {
                        document.getElementById('<%= lbl1.ClientID %>').style.color = color;
                    }
                </script>
                    <asp:Button Class="auto-style1" ID="BtnVolver" runat="server" OnClick="BtnVolver_Click" Text="Ejercicio 1" />
            </div>
        </form>
    </body>
</html>
