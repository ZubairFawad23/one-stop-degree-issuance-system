using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Project
{
    public partial class View_Transcript : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["roll_no"].ToString();
            SqlCommand cm = new SqlCommand("select CName,Credit_Hours,Grade, Sem_number from cource where Roll_no = '" + username + "' order by Sem_Number", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();


            conn.Close();
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student Login.aspx");
        }
    }
}