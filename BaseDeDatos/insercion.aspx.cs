using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BaseDeDatos
{
    public partial class Insercion : System.Web.UI.Page
    {
        ConnectionStringSettings cnn = ConfigurationManager.ConnectionStrings["ConnectionString"];
        SqlCommand comando = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cnn.ConnectionString);
                DataSet ds = new DataSet("Datos_personales");
                comando.Connection = con;
                adapter.SelectCommand = comando;
                int edad = Int32.Parse(TextBox2.Text);
                comando.CommandText = "INSERT INTO Datos_personales(Nombre, Edad, Direccion, Telefono) VALUES ('" + TextBox1.Text + "', '" + edad + "', '" + TextBox3.Text + "' , '" + TextBox4.Text + "')";
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;

                Label1.Text = "Inserción exitosa ";
            }
            catch (Exception ee)
            {
                Label1.Visible = true;

                Label1.Text = "Intente de nuevo en 5 minutos.." + ee.Message;
            }


        }
        protected void Ver_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cnn.ConnectionString);
                DataSet ds = new DataSet("Datos_personales");
                comando.Connection = con;
                adapter.SelectCommand = comando;
                comando.CommandText = "Select * from Datos_personales";
                con.Open();
                comando.ExecuteNonQuery();
                adapter.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();

                Label1.Visible = false;

            }
            catch (Exception ee)
            {
                Label1.Visible = true;
                Label1.Text = "Intente de nuevo en 5 minutos.." + ee.ToString();
            }
        }

        protected void return_Click(object sender, EventArgs e)
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