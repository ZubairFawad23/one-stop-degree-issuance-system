using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class DP_reqs : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand cm = new SqlCommand("Select * from Requests where status = 'pending'", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();

            conn.Close();
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Director Login.aspx");
        }
    }
}