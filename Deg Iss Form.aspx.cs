using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
            conn.Open();

            string Name = TextBox1.Text;
            string Degree = DropDownList1.Text;
            string roll_no = TextBox2.Text;
            string Mobile = TextBox3.Text;
            string address = TextBox4.Text;

            string query = "";
            string query1 = "";
            string query2 = "";

            SqlCommand Q = new SqlCommand();
            SqlCommand Q1 = new SqlCommand();
            SqlCommand Q2 = new SqlCommand();
            DateTime T = DateTime.Now;
            //     DateTime U = DateTime.MinValue;

            query = "Insert into Requests values ('" + roll_no + "','" + Name + "','" + Degree + "','" + Mobile + "','" + address + "','" + "Pending" + "','" + T + "','" + T + "'," + 0 + ")";
            query1 = "Insert into FYP_Request values ('" + roll_no + "','" + T + "','" + "N/A" + "','" + "N/A" + "','N/A')";
            query2 = "Insert into Finance values ('" + roll_no + "','" + T + "','" + "N/A" + "','" + "N/A" + "')";

            Q = new SqlCommand(query, conn);
            Q1 = new SqlCommand(query1, conn);
            Q2 = new SqlCommand(query2, conn);
            Q.ExecuteNonQuery();
            Q1.ExecuteNonQuery();
            Q2.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Student Login.aspx");
        }
    }
}