using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Project
{
    public partial class Generate_Token : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        int t = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("Select * from Requests", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            SqlCommand c = new SqlCommand(" select max(token) from requests", conn);
            t = Convert.ToInt32(c.ExecuteScalar().ToString());
            t++;



            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("One Stop Login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conn.Open();
            string x = TextBox1.Text;




            SqlCommand ct = new SqlCommand("Update requests set token = " + t + " where roll_no = '" + x + "' ", conn);

            ct.ExecuteNonQuery();

            SqlCommand cm = new SqlCommand("Select * from Requests", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();

        }
    }
}