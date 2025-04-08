using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace TP2_GRUPO_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTable_Click(object sender, EventArgs e)
        {
            
            string product1 = HttpUtility.HtmlEncode(tbProduct1.Text.Trim());
            string product2 = HttpUtility.HtmlEncode(tbProduct2.Text.Trim());
            string amountText1 = tbAmount.Text.Trim();
            string amountText2 = tbAmount2.Text.Trim();

            
            int amount1, amount2;

            bool isValid1 = int.TryParse(amountText1, out amount1);
            bool isValid2 = int.TryParse(amountText2, out amount2);

            if (product1 == "" || product2 == "")
            {
                lblTable.Text = "<span style='color:red;'>Por favor ingrese nombres de los productos.</span>";
                return;
            }
            else if (product1.Any(char.IsDigit) || (product2.Any(char.IsDigit) ) )
            {
                tbProduct1.Text = "";
                tbProduct2.Text = "";

                lblTable.Text = "<span style='color:red;'>Por favor ingrese nombres validos.</span>";
                return;
            }

            if (!isValid1 || !isValid2)
            {
                tbAmount.Text = "";
                tbAmount2.Text = "";

                lblTable.Text = "<span style='color:red;'>Por favor ingrese cantidades numéricas válidas.</span>";
                return;
            }

            
            string table = "<table border='1'>";
            table += "<tr><td><strong>Producto</strong></td><td><strong>Cantidad</strong></td></tr>";
            table += $"<tr><td>{product1}</td><td>{amount1}</td></tr>";
            table += $"<tr><td>{product2}</td><td>{amount2}</td></tr>";
            table += $"<tr><td><strong>TOTAL</strong></td><td>{amount1 + amount2}</td></tr>";
            table += "</table>";

            lblTable.Text = table;
        }

        protected void Ej2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio2.aspx");
        }

        protected void Ej3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio3.aspx");
        }

        protected void Ej4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio4.aspx");
        }

        protected void Ej5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio5.aspx");
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            string table = "" ;

            tbProduct1.Text = "";
            tbProduct2.Text = "";
            tbAmount.Text = "";
            tbAmount2.Text = "";

            lblTable.Text = table;

        }
    }
}