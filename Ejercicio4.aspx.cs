using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_4
{
    public partial class Ejercicio4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Creacion de la clase Usuario
        public class User
        {
            private String username;
            private String password;
           
        //Contructor de la clase, para crearlos pasando sus valores por parametro
            public User(string username, string password)
            {
                this.username = username;
                this.password = password;
            }

            //getters
            public string GetUsername()
            {
                return username;
            }

            public string GetPassword()
            {
                return password;
            }
        }

        //Lista de usuarios precreada, con posibilidad de agregar mas de ellos.
        User[] users = new User[]
        {
           new User("claudio", "casas"),
           new User("lautaro", "Camejo1234"),
           new User("Luca", "Gauna1234")
        };


        protected void entryButton_Click(object sender, EventArgs e)
        {
            if (!usernameTxtBox.Text.Trim().Equals(""))
            {
                //Creacion de un usuario temporal para luego saber si existe en la lista de Usuarios Registrados
                User user = new User(usernameTxtBox.Text, passwordTxtBox.Text);

                //Pregunta de validacion de Usuario en la lista
                if (isValidUser(user,users)) {

                    //Mensaje de prueba para testear que funciona
                    welcomeMessage.Visible = true;
                }
                else
                {
                    welcomeMessage.Visible = false;
                }
            } 
        }

        /*Funcion para comprobar que el Usuario al que se intenta acceder
        existe dentro de la Lista de Usuarios*/
        protected bool isValidUser(User user, User[] userList )
        {
            bool validUser = false;
            foreach (User us in userList)
            {
                if(us.GetUsername().Equals(user.GetUsername())  && us.GetPassword().Equals(user.GetPassword()))
                {
                    validUser = true;
                    break;
                }
            }


            return validUser;
        }
    }
}