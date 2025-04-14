<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TP2.aspx.cs" Inherits="TP2_GRUPO_4.TP2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <title>TrabajoPractico2_Grupo4</title>
</head>
<body>
    <form runat="server">
        <div runat="server" id="navigation">
            <table>
                <tr>
                    <td><asp:Button Text="Principal" CssClass="button" OnClick="NavigationButton" runat="server" ID="mMenuBtn" enabled="false"/></td>
                    <td><asp:Button Text="Ejercicio 1" CssClass="button" OnClick="NavigationButton" runat="server" ID="ej1Btn"/></td>
                    <td><asp:Button Text="Ejercicio 2" CssClass="button" OnClick="NavigationButton" runat="server" ID="ej2Btn"/></td>
                </tr>
                <tr>
                    <td><asp:Button Text="Ejercicio 3" CssClass="button" OnClick="NavigationButton" runat="server" ID="ej3Btn"/></td>
                    <td><asp:Button Text="Ejercicio 4" CssClass="button" OnClick="NavigationButton" runat="server" ID="ej4Btn"/></td>
                    <td><asp:Button Text="Ejercicio 5" CssClass="button" OnClick="NavigationButton" runat="server" ID="ej5Btn"/></td>
                </tr>
            </table>
        </div>
        <div runat="server" id="mainMenu">
            <table>
                <tr>
                    <td><asp:Label Text="Integrantes" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Baied, Agustín" CssClass="button" runat="server"/></td>
                    <td><asp:Label Text="Gauna, Lucas" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Camejo, Lautaro" CssClass="button" runat="server"/></td>
                    <td><asp:Label Text="Saucedo, Lucas" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Fernandez, Franco" CssClass="button" runat="server"/></td>
                    <td><asp:Label Text="Romero Benjamin" CssClass="button" runat="server"/></td>
                </tr>
            </table>
        </div>
        <div runat="server" id="ejercicio1" visible="false">
            <table>
                <tr>
                    <td><asp:Label Text="Ingrese el nombre del producto:" CssClass="button" runat="server"/></td>
                    <td><asp:TextBox CssClass="button" runat="server" ID="product1Name"/></td>
                    <td><asp:Label Text="Cantidad:" CssClass="button" runat="server"/></td>
                    <td><asp:TextBox CssClass="button" runat="server" ID="product1Amount"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Ingrese el nombre del producto:" CssClass="button" runat="server"/></td>
                    <td><asp:TextBox CssClass="button" runat="server" ID="product2Name"/></td>
                    <td><asp:Label Text="Cantidad:" CssClass="button" runat="server"/></td>
                    <td><asp:TextBox CssClass="button" runat="server" ID="product2Amount"/></td>
                </tr>
                <tr>
                    <td><asp:Button Text="Generar Tabla" CssClass="button" OnClick="GenerateProductTable" runat="server"/></td>
                </tr>
                <tr>
                    <td colspan="4"><asp:Label ID="productTable" CssClass="button" runat="server" Visible="false"/></td>
                </tr>
            </table>
        </div>
        <div runat="server" id="ejercicio2" visible="false">
            <div runat="server" id="ejercicio2a">
                <table>
                    <tr>
                        <td><asp:Label Text="Nombre:" CssClass="button" runat="server"/></td>
                        <td><asp:TextBox CssClass="button" runat="server" ID="ej2Name"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Apellido:" CssClass="button" runat="server"/></td>
                        <td><asp:TextBox CssClass="button" runat="server" ID="ej2LastName"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Ciudad:" CssClass="button" runat="server"/></td>
                        <td><asp:DropDownList CssClass="listcontainer" runat="server" ID="ej2Zone">
                                <asp:ListItem>Gral. Pacheco</asp:ListItem>
                                <asp:ListItem>San Miguel</asp:ListItem>
                                <asp:ListItem>Boedo</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Temas:" CssClass="button" runat="server"/></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBoxList CssClass="listcontainer" runat="server" ID="ej2Topics">
                                <asp:ListItem>Ciencias</asp:ListItem>
                                <asp:ListItem>Literatura</asp:ListItem>
                                <asp:ListItem>Historia</asp:ListItem>
                            </asp:CheckBoxList></td>
                    </tr>
                    <tr>
                        <td><asp:Button Text="Ver resumen" CssClass="button" OnClick="GenerateResume" runat="server"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej2Error"/></td>
                    </tr>
                </table>
            </div>
            <div runat="server" id="ejercicio2b" visible="false">
                <table>
                    <tr>
                        <td><asp:Label Text="RESUMEN" CssClass="button" runat="server"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Nombre:" CssClass="button" runat="server"/></td>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej2ResumeName"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Apellido:" CssClass="button" runat="server"/></td>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej2ResumeLastname"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Zona:" CssClass="button" runat="server"/></td>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej2ResumeZone"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Los temas elegidos son:" CssClass="button" runat="server"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej2ResumeTopics"/></td>
                    </tr>
                    <tr>
                        <td><asp:Button Text="Regresar" CssClass="button" OnClick="GenerateResume" runat="server"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <div runat="server" id="ejercicio3" visible="false">
            <table>
                <tr>
                    <td><asp:LinkButton Text="Rojo" CssClass="button" runat="server" OnClick="ChangeColor"/></td>
                </tr>
                <tr>
                    <td><asp:LinkButton Text="Azul" CssClass="button" runat="server" OnClick="ChangeColor"/></td>
                </tr>
                <tr>
                    <td><asp:LinkButton Text="Verde" CssClass="button" runat="server" OnClick="ChangeColor"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Texto Coloreado" CssClass="button" runat="server" ID="sampleColourText"/></td>
                </tr>
            </table>
        </div>
        <div runat="server" id="ejercicio4" visible="false">
            <div runat="server" id="ejercicio4a">
                <table>
                    <tr>
                        <td><asp:Label Text="Usuario:" CssClass="button" runat="server"/></td>
                        <td><asp:TextBox CssClass="button" runat="server" ID="ej4User"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="Contraseña:" CssClass="button" runat="server"/></td>
                        <td><asp:TextBox CssClass="button" runat="server" ID="ej4Password" TextMode="Password"/></td>
                    </tr>
                    <tr>
                        <td><asp:Button Text="Validar" CssClass="button" runat="server" OnClick="ValidateSession"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej4Error"/></td>
                    </tr>
                </table>
            </div>
            <div runat="server" id="ejercicio4b" visible="false">
                <table>
                    <tr>
                        <td><asp:Label Text="" CssClass="button" runat="server" ID="ej4Login"/></td>
                    </tr>
                    <tr>
                        <td><asp:Button Text="Regresar" CssClass="button" runat="server" OnClick="ValidateSession"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <div runat="server" id="ejercicio5" visible="false">
            <table>
                <tr>
                    <td><asp:Label Text="Elija su Configuracion" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Seleccione cantidad de memoria" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td><asp:DropDownList CssClass="listcontainer" runat="server" ID="RamList">
                        <asp:ListItem>2GB</asp:ListItem>
                        <asp:ListItem>4GB</asp:ListItem>
                        <asp:ListItem>6GB</asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label Text="Seleccione accesorios" CssClass="button" runat="server"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBoxList CssClass="listcontainer" runat="server" ID="AccesorieList">
                            <asp:ListItem>Monitor LCD</asp:ListItem>
                            <asp:ListItem>HD 500GB</asp:ListItem>
                            <asp:ListItem>Grabador DVR</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button Text="Calcular Precio" CssClass="button" runat="server" OnClick="CalculatePrice"/></td>
                </tr>
                <tr>
                    <td><asp:Label Text="" CssClass="button" runat="server" ID="PriceLabel"/></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>