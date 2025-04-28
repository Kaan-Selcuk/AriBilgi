using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OkulWebsitesi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = "Data Source=KSK\\SQLKAAN;Initial Catalog=Okul;Integrated Security=True;";
            con.Open();
            UpdateTable();
            con.Close();
        }
        private SqlConnection con;
        protected void EklemeButonu_Click(object sender, EventArgs e)
        {


            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Ogrenci(ogrenciNo,adSoyad) values (@ogrenciNo,@adSoyad)";


            cmd.Parameters.AddWithValue("@ogrenciNo", TextBox1.Text);
            cmd.Parameters.AddWithValue("@adSoyad", TextBox2.Text);

            if (cmd.ExecuteNonQuery() > 0)
            {
                UpdateTable();
            }

            con.Close();
        }
        private void UpdateTable()
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select *  from Ogrenci", con);

            DataTable dt = new DataTable();

            sqlDataAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        
    }
}