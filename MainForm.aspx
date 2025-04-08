<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="TP2_GRUPO_4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
            height: 295px;
        }
        .auto-style13 {
            height: 15px;
            width: 35px;
        }
        .auto-style14 {
            height: 30px;
            }
        .auto-style15 {
            height: 20px;
            width: 35px;
        }
        .auto-style17 {
            height: 10px;
            width: 35px;
        }
        .title {
            height: 30px;
            text-align: center;
            color: #660066;
            background-color:#FF66FF;
            border: 0px solid #333;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-collapse: separate;
            overflow: hidden;
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
        .members {
            text-align: left;
            color: #FF66FF;
            font-size: 14px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="title" colspan="7">IR A</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td colspan="5">
                        <asp:Button ID="Button1" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" OnClick="Button1_Click" Text="Ejercicio 1" Width="194px" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td colspan="5" class="auto-style19">
                        <asp:Button ID="Button2" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Ejercicio 2" Width="194px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style3" colspan="5">
                        <asp:Button ID="Button3" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Ejercicio 3" Width="194px" OnClick="Button3_Click"/>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4" colspan="5">
                        <asp:Button ID="Button4" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Ejercicio 4" Width="194px" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4" colspan="5">
                        <asp:Button ID="Button5" runat="server" BackColor="#990099" BorderColor="#660066" ForeColor="#FF66FF" Text="Ejercicio 5" Width="194px" OnClick="Button5_Click" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="members" colspan="5">Integrantes: 
                        <br />
                        <ul>
                          <li>Baied, Agustín</li>
                          <li>Camejo, Lautaro</li>
                          <li>Fernández, Franco</li>
                          <li>Gauna, Luca</li>
                          <li>Saucedo, Lucas</li>
                          <li>Romero, Benjamin</li>
                        </ul>
                        </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
