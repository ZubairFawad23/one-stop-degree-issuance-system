using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class Finance_Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("Select R.roll_no, R.stname, R.degree, F.Finance_Status, F.Finance_Remarks from Requests R, Finance F where R.roll_no = F.roll_no", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();

            conn.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            Application["st"] = TextBox1.Text;
            Response.Redirect("Fee Details.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["roll_no"].ToString();
            string query7 = "revert";

            SqlCommand cm = new SqlCommand();
            cm = new SqlCommand(query7, conn);
            cm.ExecuteNonQuery();
            //cm.EndExecuteNonQuery(a);
            ////string username = Request.QueryString["roll_no"];

            SqlCommand del = new SqlCommand("drop user " + username, conn);
            del.ExecuteNonQuery();

            string query8 = "USE [master]";
            string query9 = "exec terminate";
            string query10 = "use dbproject";


            SqlCommand um = new SqlCommand(query8, conn);
            um.ExecuteNonQuery();

            SqlCommand et = new SqlCommand(query9, conn);
            et.ExecuteNonQuery();

            SqlCommand db = new SqlCommand(query10, conn);
            db.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Login.aspx");
        }
    }
}