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
                string city = transformValuesZone(zoneDropdownList);


            if (validReponse())
            {
                responseNameLabel.Visible = true;
                responseNameLabel.Text = nameTextBox.Text;
                responseSurnameLabel.Visible = true;
                responseSurnameLabel.Text = surnameTextBox.Text;
                responseZoneLabel.Visible = true;
                responseZoneLabel.Text = city;
                responseThemesLabel.Visible = true;
                responseThemesLabel.Text = whoIsSelected(themeCheckBoxList);
            }
            else
            {
                resetFieldValues();
            }
            
        }

        //Validacion de campos completos, para poder dar un resumen
        protected bool validReponse()
        {
            return !nameTextBox.Text.Trim().Equals("") && !responseSurnameLabel.Text.Trim().Equals("") && isSomeBoxSelected(themeCheckBoxList);
        }

        //Validacion hay casillas tildadas?
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

        //En caso de tener campos seleccionados, cuales son?
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

       //En caso luego de completar los campos y mostrar un resumen, si quito alguno de los campos y vuelvo a validar con algun campo vacio reseteo su visibilidad
        protected void resetFieldValues()
        {
            responseNameLabel.Visible = false;
            responseSurnameLabel.Visible = false;
            responseThemesLabel.Visible = false;
            responseZoneLabel.Visible = false;
        }

        protected void Ej1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected string transformValuesZone(DropDownList drop )
        {
            switch (zoneDropdownList.SelectedIndex)
            {
                case 1: return "Zona Oeste"; 

                case 2: return "Zona Sur"; 

                case 0: return "Zona Norte"; 

                default: return "Zona no seleccionada.";





            }
        }
    }
}