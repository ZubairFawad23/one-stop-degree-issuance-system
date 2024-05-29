using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class D_Activity : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True;MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("Select R.roll_no, R.stname, R.degree,R.status,F.FYP_Remarks,F.FYP_Status, Fi.Finance_Remarks, Fi.Finance_Status from Requests R, FYP_Request F, Finance Fi where R.roll_no=F.roll_no and R.roll_no=Fi.roll_no", conn);
            SqlDataReader read = cm.ExecuteReader();
            GridView1.DataSource = read;
            GridView1.DataBind();
            read.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Director Login.aspx");
        }
    }
}