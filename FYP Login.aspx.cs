using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project
{
    public partial class FYP_Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("Select R.roll_no, R.stname, R.degree,F.FYP_Remarks,F.FYP_Status from Requests R, FYP_Request F where R.roll_no=F.roll_no", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();


            conn.Close();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string x = TextBox1.Text;
            string y = TextBox2.Text;

            SqlCommand ct = new SqlCommand("Update FYP_Request set FYP_Remarks = '" + y + "' where roll_no = '" + x + "' ", conn);
            ct.ExecuteNonQuery();

            SqlCommand cx = new SqlCommand("Update FYP_Request set FYP_Status = 'Accept' where roll_no = '" + x + "' ", conn);
            cx.ExecuteNonQuery();


            string check_fin = "";
            string query3 = "select Finance_Status from Finance where roll_no = '" + x + "'";
            SqlCommand cf = new SqlCommand(query3, conn);
            check_fin = cf.ExecuteScalar().ToString();

            if (check_fin == "Accept")
            {
                SqlCommand b = new SqlCommand("Update requests set status = 'Processed' where roll_no = '" + x + "'", conn);
                b.ExecuteNonQuery();
            }

            SqlCommand ti = new SqlCommand("update FYP_Request  set Time_diff = CONVERT(varchar(50), t.TIMEE) from (  select datediff(SECOND, convert(varchar, FYP_Time), convert(varchar, GETDATE())) / 3600.0 as TIMEE   from FYP_Request F where F.roll_no = '" + x + "') t where roll_no = '" + x + "' ", conn);
            ti.ExecuteNonQuery();


            SqlCommand cm = new SqlCommand("Select R.roll_no, R.stname, R.degree,F.FYP_Remarks,F.FYP_Status, F.Time_diff from Requests R, FYP_Request F where R.roll_no=F.roll_no", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();

            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string x = TextBox1.Text;
            string y = TextBox2.Text;

            SqlCommand ct = new SqlCommand("Update FYP_Request set FYP_Remarks = '" + y + "' where roll_no = '" + x + "' ", conn);
            ct.ExecuteNonQuery();

            SqlCommand cx = new SqlCommand("Update FYP_Request set FYP_Status = 'Reject' where roll_no = '" + x + "' ", conn);
            cx.ExecuteNonQuery();

            SqlCommand cm = new SqlCommand("Select R.roll_no, R.stname, R.degree,F.FYP_Remarks,F.FYP_Status from Requests R, FYP_Request F where R.roll_no=F.roll_no", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();
        }
    }
}