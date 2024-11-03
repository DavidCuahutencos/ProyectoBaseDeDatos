using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaseDeDatos
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertarDatos_Click(object sender, EventArgs e)
        {
            try
            {

                Response.Redirect("Insercion.aspx");
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void EliminarDatos_Click(object sender, EventArgs e)
        {
            try
            {

                Response.Redirect("Eliminar.aspx");
            }
            catch (Exception ex)
            {
               
            }
        }

        protected void ActualizarDatos_Click(object sender, EventArgs e)
        {
            try
            {

                Response.Redirect("Actualizar.aspx");
            }
            catch (Exception ex)
            {
               
            }
        }

        
    }
}