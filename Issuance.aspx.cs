using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class Issuance : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("Select * from Requests", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cs = new SqlCommand();
            string username = TextBox1.Text;

            string query2 = "select status from requests where roll_no = '" + username + "'";
            string check = "";
            cs = new SqlCommand(query2, conn);
            check=cs.ExecuteScalar().ToString();

            if (check == "Processed")
            {
                string query = "Update requests set status = 'Issued' where roll_no = '" + username + "'";



                SqlCommand cd = new SqlCommand(query, conn);
                cd.ExecuteNonQuery();

                SqlCommand ti = new SqlCommand("update requests  set comp_time = GETDATE() where roll_no = '" + username + "' ", conn);
                ti.ExecuteNonQuery();
            }
            else
            {
                Response.Write("Request is not processed yet!!!");
            }


            

            SqlCommand cm = new SqlCommand("Select * from Requests", conn);
            SqlDataReader dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();

            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("One Stop Login.aspx");
        }
    }
}