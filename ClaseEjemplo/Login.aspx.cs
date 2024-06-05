using Mili;
using System;
using System.Data;

namespace ClaseEjemplo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //generate a function to validate the user and password

            try
            {
                //Declarar dos string para guardar la informacion de los textbox
                string usuario = TextBox2.Text;
                string psw = TextBox1.Text;
                //Instruccion sql
                string cmd = string.Format("Select user, psw from login where user = '" + usuario + "' and psw = '" + psw + "'");
                //Cargar dataset con milibreria
                DataSet dt = Utilerias.Ejecutar(cmd);
                //Lo que encontro lo comparara lo guarda en los siguientes variables string
                string usu2 = dt.Tables[0].Rows[0]["user"].ToString().Trim();
                string psw2 = dt.Tables[0].Rows[0]["psw"].ToString().Trim();
                //Compara la informacion de la base de datos con la apliacion
                if ((usu2 == usuario) && (psw2 == psw))
                {
                      
                    Response.Redirect("Productos.aspx");
                }
            }//Si no envia un mensaje, con el nombre del error
            catch (Exception)
            {
                Response.Write("<script>alert('El usuario no se encuentra');</script>");
                TextBox1.Focus();
            }
        }
    }
}