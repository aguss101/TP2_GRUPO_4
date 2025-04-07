using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_4
{
	public partial class Ejercicio3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void lbRojo_Click(object sender, EventArgs e)
        {
			lblColorChange.ForeColor = Color.Red;
            pColorSelected.BackColor = Color.Red;

        }

        protected void lbVerde_Click(object sender, EventArgs e)
        {
            lblColorChange.ForeColor = Color.Green;
            pColorSelected.BackColor = Color.Green;
        }

        protected void lbAzul_Click(object sender, EventArgs e)
        {
            lblColorChange.ForeColor = Color.Blue;
            pColorSelected.BackColor = Color.Blue;
        }
    }
}