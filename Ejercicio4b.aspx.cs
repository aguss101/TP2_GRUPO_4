using System;
namespace TP2_GRUPO_4
{
    public partial class Ejercicio4b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["msg"];
            if (!string.IsNullOrEmpty(user))
            {
                lblWelcome.Text = "Bienvenido a mi página Sr./a " + Server.HtmlEncode(user);
            }
            else
            {
                lblWelcome.Text = "Bienvenido a mi página";
            }
        }
    }
}
