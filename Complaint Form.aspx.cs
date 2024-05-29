using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

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

            string u_type = DropDownList1.Text;
            string x = TextBox1.Text;
            string username = Application["roll_no"].ToString();
            switch (u_type)
            {
                case "Name":


                    SqlCommand ct = new SqlCommand("Update students set Stname = '" + x + "' where roll_no = '" + username + "' ", conn);
                    ct.ExecuteNonQuery();
                    break;

                case "Number":


                    SqlCommand cr = new SqlCommand("Update students set Stnumber = '" + x + "' where roll_no = '" + username + "' ", conn);
                    cr.ExecuteNonQuery();

                    break;

                case "CNIC":


                    SqlCommand ce = new SqlCommand("Update students set Stcnic = '" + x + "' where roll_no = '" + username + "' ", conn);
                    ce.ExecuteNonQuery();

                    break;



                case "Fathers Name":



                    SqlCommand cl = new SqlCommand("Update students set StFathersname = '" + x + "' where roll_no = '" + username + "' ", conn);
                    cl.ExecuteNonQuery();

                    break;



                case "Password":



                    SqlCommand ci = new SqlCommand("Update students set Spassw = '" + x + "' where roll_no = '" + username + "' ", conn);
                    ci.ExecuteNonQuery();

                    break;



            }

            Response.Redirect("Student Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
