using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class Fee_Details : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string username = Application["st"].ToString();
            SqlCommand cm = new SqlCommand("Select F.FID, F.roll_no, S.Stname, F.Outstanding from Fee F, Students S where S.roll_no = F.roll_no and F.roll_no = '" + username + "'", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Finance Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();

            string rem = TextBox1.Text;
            string username = Application["st"].ToString();
            string query = "select outstanding from fee where roll_no = '" + username + "'";
            string query2 = "";

            int check = 0;
            SqlCommand cm = new SqlCommand(query, conn);
            check = Convert.ToInt32(cm.ExecuteScalar().ToString());
            
            if (check == 0)
            {
                
                query2 = "Update Finance set Finance_Status = 'Accept', Finance_Remarks = '"+ TextBox1.Text + "' where roll_no = '" + username + "'";
                SqlCommand cd = new SqlCommand(query2, conn);
                cd.ExecuteNonQuery();

                string check_fyp = "";
                string query3 = "select FYP_Status from FYP_Request where roll_no = '" + username + "'";
                SqlCommand cf = new SqlCommand(query3, conn);
                check_fyp = cf.ExecuteScalar().ToString();

                if (check_fyp == "Accept")
                {
                    SqlCommand b = new SqlCommand("Update requests set status = 'Processed' where roll_no = '" + username + "'", conn);
                    b.ExecuteNonQuery();
                }
                conn.Close();

                Response.Redirect("Finance Login.aspx");
            }
            else
            {
                conn.Close();
                Response.Write("Outstanding Dues not Clear!!!");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();

            string rem = TextBox1.Text;
            string username = Application["roll_no"].ToString();

            string query2 = "Update Finance set Finance_Status = 'Rejected', Finance_Remarks = '" + TextBox1.Text + "' where roll_no = '" + username + "'";
            SqlCommand cd = new SqlCommand(query2, conn);
            cd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Finance Login.aspx");
        }
    }
}