using System;
using System.IO;
using System.Security.Policy;
using System.Web.Services.Description;

namespace TP2_GRUPO_4
{

    public partial class Ejercicio4 : System.Web.UI.Page
    {
        private int failedAttempsCounter = 0;
        // Clase interna para representar un usuario
        public class User
        {
            private string username;
            private string password;

            public User(string username, string password)
            {
                this.username = username;
                this.password = password;
            }

            public string GetUsername() => username;
            public string GetPassword() => password;
        }

        // Lista de usuarios válidos
        User[] users = new User[]
        {
            new User("claudio", "casas"),
            new User("lautaro", "Camejo1234"),
            new User("luca", "Gauna1234")
        };

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                ViewState["failedAttempsCounterState"] = 0;

            } 
           



        }

        protected void entryButton_Click(object sender, EventArgs e)
        {
            
            string inputUser = usernameTxtBox.Text.Trim();
            string inputPass = passwordTxtBox.Text;

            User user = new User(inputUser, inputPass);

            if (ViewState["failedAttempsCounterState"] != null)
            {
                failedAttempsCounter = (int)ViewState["failedAttempsCounterState"] + 1;
                if (failedAttempsCounter == 1)
                {
                    //Response.Write("Lleva " + failedAttempsCounter + " intento de 3");
                    attemptsShown.Text = "<span class='literal-class';>Lleva " + failedAttempsCounter + " intento de 3 </span>";
                }
                else
                {
                    attemptsShown.Text = "<span class='literal-class';>Lleva " + failedAttempsCounter + " intentos de 3 </span>";
                }
                    if (IsValidUser(user, users))
                {
                    string encodedName = Server.UrlEncode(user.GetUsername());
                    Response.Redirect("Ejercicio4b.aspx?msg=" + encodedName);
                }
                else
                {

                    ViewState["failedAttempsCounterState"] = failedAttempsCounter;

                    if (failedAttempsCounter > 2)
                    {
                        failedAttempsCounter = 0;
                        Response.Redirect("Ejercicio4c.aspx");



                    }

                }

                    
                }

            }
        
       
        protected bool IsValidUser(User user, User[] userList)
        {
            bool validUser = false;
            
            foreach (User us in userList)
            {
                if (us.GetUsername().Equals(user.GetUsername()) && us.GetPassword().Equals(user.GetPassword()))
                {
                    validUser = true;
                    break;
                }
            }
            return validUser;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainForm.aspx");
        }

        protected void usernameTxtBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
