using System;

namespace TP2_GRUPO_4
{
    public partial class Ejercicio4 : System.Web.UI.Page
    {
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void entryButton_Click(object sender, EventArgs e)
        {
            string inputUser = usernameTxtBox.Text.Trim();
            string inputPass = passwordTxtBox.Text;

            User input = new User(inputUser, inputPass);

            if (IsValidUser(input, users))
            {
                string encodedName = Server.UrlEncode(input.GetUsername());
                Response.Redirect("Ejercicio4b.aspx?msg=" + encodedName);
            }
            else
            {
                Response.Redirect("Ejercicio4c.aspx");
            }
        }

        private bool IsValidUser(User input, User[] userList)
        {
            foreach (User u in userList)
            {
                if (u.GetUsername().Equals(input.GetUsername(), StringComparison.OrdinalIgnoreCase)
                    && u.GetPassword().Equals(input.GetPassword()))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
