using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deg Iss Form.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["roll_no"].ToString();

            Application["roll_no"] = username;
            
            conn.Close();
            Response.Redirect("View Transcript.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["roll_no"].ToString();
            SqlCommand cm = new SqlCommand();


            string query7 = "revert";


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
            //conn.Close();
            Response.Redirect("Login.aspx");        
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string username = Application["roll_no"].ToString();
            Application["roll_no"] = username;
            Response.Redirect("Complaint Form.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string username = Application["roll_no"].ToString();
            Application["roll_no"] = username;
            Response.Redirect("Activity Tracking.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["roll_no"].ToString();

            string check_stat = "";
            string query3 = "select Status from requests where roll_no = '" + username + "'";
            SqlCommand cf = new SqlCommand(query3, conn);
            check_stat = cf.ExecuteScalar().ToString();

            if (check_stat == "Issued")
            {
                SqlCommand b = new SqlCommand("Update requests set status = 'Collected' where roll_no = '" + username + "'", conn);
                b.ExecuteNonQuery();
            }
            else
            {
                Response.Write("Degree Form Not Processed!!!");
            }
        }
    }
}