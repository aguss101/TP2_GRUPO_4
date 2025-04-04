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
			int amount = int.Parse(tbAmount.Text);
            string table = "<table border = '1'";
			table += "<tr><td>Producto</td><td>Cantidad</td> </tr>";
			for(int i = 1; i <=1; i++)
			{
				table += "<tr>";
				table += "<td>" + product + "</td>";
                table += "<td>" +  amount +  "</td>";
                table += "</tr>";
                

            }
			
			table += "</table>";
			lblTable.Text = table;
			
        }
    }
}