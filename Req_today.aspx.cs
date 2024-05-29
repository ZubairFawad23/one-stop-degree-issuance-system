using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Project
{
    public partial class Req_today : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cm = new SqlCommand("Select * from Requests where convert(varchar(10), req_time, 111) = convert(varchar(10), GETDATE(), 111)", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();



            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Director Login.aspx");
        }
    }
}