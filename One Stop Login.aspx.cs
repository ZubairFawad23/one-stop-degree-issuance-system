using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    

    public partial class One_Stop_Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("OSA_Processed Reqs.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Generate Token.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("OSA_P Reqs.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("OSA_P Reqs.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuance.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
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