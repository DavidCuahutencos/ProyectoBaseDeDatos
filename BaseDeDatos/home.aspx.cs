using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Reflection.Emit;
using System;

namespace BaseDeDatos
{
    public partial class Home : System.Web.UI.Page
    {
        ConnectionStringSettings cnn = ConfigurationManager.ConnectionStrings["ConnectionString"];
        SqlCommand comando = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnConectar_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conexion = new SqlConnection(cnn.ConnectionString);
                conexion.Open();
                Label1.Text = "Conexion Exitosa";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Conexión exitosa." + "');", true);
                conexion.Close();

                btnConectar.Visible = false;
                Label1.Visible = true;
                Inicio.Visible = true;
            }
            catch (Exception ee)
            {
                Label1.Text = ee.ToString();
            }
        }

        protected void Inicio_Click(object sender, EventArgs e)
        {
            try
            {
               
                Response.Redirect("Menu.aspx");
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}