using System;
using System.Collections.Generic;
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

			string product = tbProduct1.Text;
			string product2 = tbProduct2.Text;
			int amount = int.Parse(tbAmount.Text);
			int amount2 = int.Parse(tbAmount2.Text);
			string table = "<table border = '1'";
			table += "<tr><td>Producto</td><td>Cantidad</td> </tr>";
			for(int i = 1; i <=1; i++)
			{
				table += "<tr>";
				table += "<td>" + product + "</td>";
                table += "<td>" +  amount +  "</td>";
                table += "</tr>";
                table += "<tr>";
                table += "<td>" + product2 + "</td>";
                table += "<td>" + amount2 + "</td>";
                table += "</tr>";


            }
			int total = amount + amount2;

			
			table += "<tr><td>TOTAL</td>"+"<td>" + total+ "</td>"+"</tr></table>";
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
    }
}