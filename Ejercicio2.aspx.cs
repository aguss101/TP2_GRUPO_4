using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_4
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (validReponse())
            {
                responseNameLabel.Visible = true;
                responseNameLabel.Text = nameTextBox.Text;
                responseSurnameLabel.Visible = true;
                responseSurnameLabel.Text = surnameTextBox.Text;
                responseThemesLabel.Visible = true;
                responseThemesLabel.Text = whoIsSelected(themeCheckBoxList);
            }
            else
            {
                resetFieldValues();
            }
            
        }
        protected bool validReponse()
        {
            return !nameTextBox.Text.Trim().Equals("") && !responseSurnameLabel.Text.Trim().Equals("") && isSomeBoxSelected(themeCheckBoxList);
        }
        protected bool isSomeBoxSelected(CheckBoxList cbList)
        {
            bool isSomeSelected = false;
            
            foreach (ListItem item in cbList.Items)
            {
                if (item.Selected)
                {
                    isSomeSelected = true;
                    break;
                }
            }
            return isSomeSelected;
        }
        protected String whoIsSelected(CheckBoxList cbList)
        {
            String selectedFields = null;
            foreach (ListItem item in cbList.Items)
            {
                if (item.Selected)
                {
                    selectedFields += "- " + item.Text + "\n";
                }
            }

            return selectedFields.Trim();
        }
        protected void resetFieldValues()
        {
            responseNameLabel.Visible = false;
            responseSurnameLabel.Visible = false;
            responseThemesLabel.Visible = false;
            responseZoneLabel.Visible = false;
        }
    }
}