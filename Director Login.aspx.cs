using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class Director_Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("DP_reqs.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPro_reqs.aspx");

        }

        protected void Button10_Click(object sender, EventArgs e)
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

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("D_Activity.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Time Taken.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Req_today.aspx");
        }
    }
}