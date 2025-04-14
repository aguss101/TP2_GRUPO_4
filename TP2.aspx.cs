using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_4
{
    public partial class TP2 : System.Web.UI.Page
    {
        protected Dictionary<string, string> users;
        protected int loginAttempts = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            users = new Dictionary<string, string>()
            {
                {"claudio", "casas"},
                {"agustin", "grupo4"},
                {"benjamin", "grupo4"},
                {"franco", "grupo4"},
                {"lautaro", "grupo4"},
                {"lucasg", "grupo4"},
                {"lucass", "grupo4"}
            };
        }
        protected void ResetNavigation()
        {
            mMenuBtn.Enabled = true;
            ej1Btn.Enabled = true;
            ej2Btn.Enabled = true;
            ej3Btn.Enabled = true;
            ej4Btn.Enabled = true;
            ej5Btn.Enabled = true;
            mainMenu.Visible = false;
            ejercicio1.Visible = false;
            ejercicio2.Visible = false;
            ejercicio3.Visible = false;
            ejercicio4.Visible = false;
            ejercicio5.Visible = false;
        }
        protected void ResetEj(int id)
        {
            switch (id)
            {
                case 1:
                    product1Name.Text = "";
                    product1Amount.Text = "";
                    product2Name.Text = "";
                    product2Amount.Text = "";
                    break;
                case 2:
                    ej2Name.Text = "";
                    ej2LastName.Text = "";
                    ej2ResumeName.Text = "";
                    ej2ResumeLastname.Text = "";
                    ej2ResumeZone.Text = "";
                    ej2ResumeTopics.Text = "";
                    ej2Zone.SelectedIndex = 0;
                    foreach (ListItem item in ej2Topics.Items)
                    {
                        if (item.Selected)
                        {
                            item.Selected = false;
                        }
                    }
                    break;
                case 3:
                    sampleColourText.ForeColor = System.Drawing.Color.Black;
                    break;
                case 4:
                    ej4User.Text = "";
                    ej4Password.Text = "";
                    break;
                case 5:
                    RamList.SelectedIndex = 0;
                    foreach (ListItem item in AccesorieList.Items)
                    {
                        if (item.Selected)
                        {
                            item.Selected = false;
                        }
                    }
                    PriceLabel.Visible = false;
                    break;
                default:
                    break;
            }
        }
        protected void ResetCommand(object sender, CommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            ResetEj(id);
        }
        protected void NavigationButton(object sender, EventArgs e) {
            if(sender is Button btn)
            {
                ResetNavigation();
                switch (btn.ID)
                {
                    case "mMenuBtn":
                        mMenuBtn.Enabled = false;
                        mainMenu.Visible = true;
                        break;
                    case "ej1Btn":
                        ej1Btn.Enabled = false;
                        ejercicio1.Visible = true;
                        ResetEj(1);
                        break;
                    case "ej2Btn":
                        ej2Btn.Enabled = false;
                        ejercicio2.Visible = true;
                        ResetEj(2);
                        break;
                    case "ej3Btn":
                        ej3Btn.Enabled = false;
                        ejercicio3.Visible = true;
                        ResetEj(3);
                        break;
                    case "ej4Btn":
                        ej4Btn.Enabled = false;
                        ejercicio4.Visible = true;
                        ResetEj(4);
                        break;
                    case "ej5Btn":
                        ej5Btn.Enabled = false;
                        ejercicio5.Visible = true;
                        ResetEj(5);
                        break;
                }
            }
        }
        protected void GenerateProductTable(object sender, EventArgs e)
        {
            productTable.Text = "";

            if (product1Name.Text == "")
            {
                productTable.Text += "Introduzca el nombre del primer producto!<br />";
            }else if(int.TryParse(product1Name.Text, out int namerr))
            {
                productTable.Text += "Introduzca un nombre válido para el primer producto!<br />";
            }
            if (!int.TryParse(product1Amount.Text, out int value1))
            {
                productTable.Text += "Introduzca la cantidad del primer producto!<br />";
            }
            if (product2Name.Text == "")
            {
                productTable.Text += "Introduzca el nombre del segundo producto!<br />";
            }
            else if (int.TryParse(product2Name.Text, out int namerr))
            {
                productTable.Text += "Introduzca un nombre válido para el primer producto!<br />";
            }
            if (!int.TryParse(product2Amount.Text, out int value2))
            {
                productTable.Text += "Introduzca la cantidad del segundo producto!<br />";
            }

            if (productTable.Text == "")
            {
                productTable.Text = "<table border='1'>";
                productTable.Text += "<tr><td><strong>Producto</strong></td><td><strong>Cantidad</strong></td></tr>";
                productTable.Text += $"<tr><td>{product1Name.Text}</td><td>{value1}</td></tr>";
                productTable.Text += $"<tr><td>{product2Name.Text}</td><td>{value2}</td></tr>";
                productTable.Text += $"<tr><td><strong>TOTAL</strong></td><td>{value1 + value2}</td></tr>";
                productTable.Text += "</table>";
            }
            productTable.Visible = true;
        }
        protected void GenerateResume(object sender, EventArgs e)
        {
            ej2Error.Text = "";
            if (ejercicio2a.Visible)
            {
                if(ej2Name.Text == "")
                {
                    ej2Error.Text += "Introduzca el nombre!<br />";
                }else if (int.TryParse(ej2Name.Text, out int namerr))
                {
                    ej2Error.Text += "Introduzca un nombre válido!<br />";
                }
                if (ej2LastName.Text == "")
                {
                    ej2Error.Text += "Introduzca el apellido!<br />";
                }
                else if (int.TryParse(ej2LastName.Text, out int namerr))
                {
                    ej2Error.Text += "Introduzca un apellido válido!<br />";
                }
                if (ej2Error.Text == "")
                {
                    ej2ResumeName.Text = ej2Name.Text;
                    ej2ResumeLastname.Text = ej2LastName.Text;
                    switch (ej2Zone.SelectedValue)
                    {
                        case "Gral. Pacheco":
                            ej2ResumeZone.Text = "Norte";
                            break;
                        case "San Miguel":
                            ej2ResumeZone.Text = "Norte";
                            break;
                        case "Boedo":
                            ej2ResumeZone.Text = "Sur";
                            break;
                        default:
                            break;
                    }
                    foreach (ListItem item in ej2Topics.Items)
                    {
                        if (item.Selected)
                        {
                            ej2ResumeTopics.Text += (item.Text + "<br/>");
                        }
                    }
                    ejercicio2a.Visible = false;
                    ejercicio2b.Visible = true;
                }
            }
            else if(ejercicio2b.Visible)
            {
                ResetEj(2);
                ejercicio2a.Visible = true;
                ejercicio2b.Visible = false;
            }
        }
        protected void ChangeColor(object sender, EventArgs e)
        {
            if(sender is LinkButton lbutton)
            {
                switch (lbutton.Text)
                {
                    case "Rojo":
                        if(sampleColourText.ForeColor == System.Drawing.Color.Red)
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Black;
                        }
                        else
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Red;
                        }
                        break;
                    case "Azul":
                        if (sampleColourText.ForeColor == System.Drawing.Color.Blue)
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Black;
                        }
                        else
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Blue;
                        }
                        break;
                    case "Verde":
                        if (sampleColourText.ForeColor == System.Drawing.Color.Green)
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Black;
                        }
                        else
                        {
                            sampleColourText.ForeColor = System.Drawing.Color.Green;
                        }
                        break;
                    default:
                        sampleColourText.ForeColor = System.Drawing.Color.Black;
                        break;
                }
                ColorPanel.BackColor = sampleColourText.ForeColor;
            }
        }
        protected void ValidateSession(object sender, EventArgs e)
        {
            bool login = false;

            if (ejercicio4a.Visible)
            {
                ej4Error.Text = "";
                if(ej4User.Text == "")
                {
                    ej4Error.Text += "Introduzca el Usuario!<br />";
                }
                if(ej4Password.Text == "")
                {
                    ej4Error.Text += "Introduzca la Contraseña!<br />";
                }
                if(ej4Error.Text == "")
                {
                    ejercicio4a.Visible = false;
                    ejercicio4b.Visible = true;
                    if (users.ContainsKey(ej4User.Text))
                    {
                        if (users[ej4User.Text] == ej4Password.Text)
                        {
                            login = true;
                        }
                    }
                    if (login)
                    {
                        ej4Login.Text = "Bienvenido a mi página Sr./a " + ej4User.Text;
                        loginAttempts = 0;
                    }
                    else
                    {
                        ej4Login.Text = "USUARIO INVALIDO, INGRESO NO PERMITIDO </br>";
                        loginAttempts++;
                        ej4Login.Text += "Usted lleva un total de " + loginAttempts.ToString() + " intento/s de inicio de sesión!";
                    }
                }
            }else if (ejercicio4b.Visible)
            {
                ResetEj(4);
                ejercicio4a.Visible = true;
                ejercicio4b.Visible = false;
            }
        }
        protected void CalculatePrice(object sender, EventArgs e)
        {
            float price = 0;

            switch (RamList.SelectedValue)
            {
                case "2GB":
                    price += 200;
                    break;
                case "4GB":
                    price += 375;
                    break;
                case "6GB":
                    price += 500;
                    break;
                default:
                    break;
            }
            foreach (ListItem item in AccesorieList.Items)
            {
                if (item.Selected)
                {
                    switch (item.Text)
                    {
                        case "Monitor LCD":
                            price += 2000.5f;
                            break;
                        case "HD 500GB":
                            price += 550.5f;
                            break;
                        case "Grabador DVR":
                            price += 1200;
                            break;
                        default:
                            break;
                    }
                }
            }
            PriceLabel.Text = "El precio final es de " + price.ToString() + "$";
            PriceLabel.Visible = true;
        }
    }
}