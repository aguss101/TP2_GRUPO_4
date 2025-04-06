using System;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_4
{
    public partial class Ejercicio5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void resumeButton_Click(object sender, EventArgs e)
        {
            float sum = 0;
            switch (ddlRam.SelectedValue)
            {
                case "2GB":
                    sum += 200;
                    break;
                case "4GB":
                    sum += 375;
                    break;
                case "6GB":
                    sum += 500;
                    break;
                default:
                    break;
            }
            foreach(ListItem item in cblExtras.Items)
            {
                if (item.Selected)
                {
                    switch (item.Text)
                    {
                        case "Monitor LCD":
                            sum += 2000.5f;
                            break;
                        case "HD 500GB":
                            sum += 550.5f;
                            break;
                        case "Grabador DVR":
                            sum += 1200;
                            break;
                        default:
                            break;
                    }
                }
            }
            resumePrice.Text = "El precio final es de " + sum.ToString() + "$";
            resumePrice.Visible = true;
        }

        protected void Ej1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}