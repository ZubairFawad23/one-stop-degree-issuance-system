using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-R3FOV5I\\SQLEXPRESS;Initial Catalog=dbproject;Integrated Security=True");
            conn.Open();

            string u_type = DropDownList1.Text;
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            bool p_valid = true;
            string query="";
            string query2 = "";
            string query3 = "";
            string query4 = "";
            int check=0;

            if (password.Length < 8)
            {
                p_valid = false;
            }

            SqlCommand login = new SqlCommand();
            SqlCommand user2 = new SqlCommand();
            SqlCommand user3 = new SqlCommand();
            SqlCommand user4 = new SqlCommand();



            switch (u_type)
            {
                case "Student":
                    query="select count(*) from students where roll_no = '" + username + "' and spassw = '" + password + "'";
                    query2 = "create user "+ username +" without login";
                    query3 = "exec sp_addrolemember 'student','"+ username + "'";
                    query4 = "execute as user = '" + username + "'";

                    login = new SqlCommand(query, conn);


                    check = Convert.ToInt32(login.ExecuteScalar().ToString());
                    //check = 1;
                    if (check == 1 && p_valid == true)
                    { 
                        Response.Write("Valid User!");
                        user2 = new SqlCommand(query2, conn);
                        user2.ExecuteNonQuery();
                        user3 = new SqlCommand(query3, conn);
                        user3.ExecuteNonQuery();
                        user4 = new SqlCommand(query4, conn);
                        user4.ExecuteNonQuery();

                        //SqlCommand temp = new SqlCommand("insert into students values ('" + 8888 + "','" + "Khan" + "','" + "gjsjdccs" + "')", conn);
                        //SqlCommand temp = new SqlCommand("set dateformat dmy", conn);
                        //temp.ExecuteNonQuery();
                        //SqlCommand temp2 = new SqlCommand("insert into Requests values ('" + "NULL" + "','" + "NULL" + "','" + "NULL" + "','" + "NULL" + "','" + "NULL" + "','" + "NULL" + "','" + "NULL" + "','" + "NULL" + "')", conn);
                        //temp2.ExecuteNonQuery();

                        Application["roll_no"] = username;
                        conn.Close();
                        Response.Redirect("Student Login.aspx");
                    }
                    else
                    {
                        Response.Write("InValid User!");
                    }

                    break;

                case "Director":

                    query = "select count(*) from Director where DUserName = '" + username + "' and DPass = '" + password + "'";
                    login = new SqlCommand(query, conn);
                    check = Convert.ToInt32(login.ExecuteScalar().ToString());

                    query2 = "create user " + username + " without login";
                    query3 = "exec sp_addrolemember 'Director','" + username + "'";
                    query4 = "execute as user = '" + username + "'";

                    if (check == 1 && p_valid == true)
                    {
                        Response.Write("Valid User!");
                        user2 = new SqlCommand(query2, conn);
                        user2.ExecuteNonQuery();
                        user3 = new SqlCommand(query3, conn);
                        user3.ExecuteNonQuery();
                        user4 = new SqlCommand(query4, conn);
                        user4.ExecuteNonQuery();

                        Application["roll_no"] = username;
                        conn.Close();
                        Response.Redirect("Director Login.aspx");
                    }
                    else
                    {
                        Response.Write("InValid User!");
                    }

                    break;



                case "One Stop":

                    query = "select count(*) from OneStopAdmin where OSA_UserName = '" + username + "' and OSA_Pass = '" + password + "'";
                    login = new SqlCommand(query, conn);
                    check = Convert.ToInt32(login.ExecuteScalar().ToString());

                    query2 = "create user " + username + " without login";
                    query3 = "exec sp_addrolemember 'One_Stop_Admin','" + username + "'";
                    query4 = "execute as user = '" + username + "'";

                    if (check == 1 && p_valid == true)
                    {
                        Response.Write("Valid User!");
                        user2 = new SqlCommand(query2, conn);
                        user2.ExecuteNonQuery();
                        user3 = new SqlCommand(query3, conn);
                        user3.ExecuteNonQuery();
                        user4 = new SqlCommand(query4, conn);
                        user4.ExecuteNonQuery();

                        Application["roll_no"] = username;
                        conn.Close();
                        Response.Redirect("One Stop Login.aspx");
                    }
                    else
                    {
                        Response.Write("InValid User!");
                    }

                    break;



                case "FYP":

                    query = "select count(*) from FYP_Faculty where FYP_UserName = '" + username + "' and FYP_Pass = '" + password + "'";
                    login = new SqlCommand(query, conn);
                    check = Convert.ToInt32(login.ExecuteScalar().ToString());

                    query2 = "create user " + username + " without login";
                    query3 = "exec sp_addrolemember 'FYP_Department','" + username + "'";
                    query4 = "execute as user = '" + username + "'";

                    if (check == 1 && p_valid == true)
                    {
                        Response.Write("Valid User!");
                        user2 = new SqlCommand(query2, conn);
                        user2.ExecuteNonQuery();
                        user3 = new SqlCommand(query3, conn);
                        user3.ExecuteNonQuery();
                        user4 = new SqlCommand(query4, conn);
                        user4.ExecuteNonQuery();

                        Application["roll_no"] = username;
                        conn.Close();
                        Response.Redirect("FYP Login.aspx");
                    }
                    else
                    {
                        Response.Write("InValid User!");
                    }

                    break;



                case "Finance":

                    query = "select count(*) from Finance_Faculty where FUserName = '" + username + "' and FPass = '" + password + "'";
                    login = new SqlCommand(query, conn);
                    check = Convert.ToInt32(login.ExecuteScalar().ToString());

                    query2 = "create user " + username + " without login";
                    query3 = "exec sp_addrolemember 'Finance_department','" + username + "'";
                    query4 = "execute as user = '" + username + "'";

                    if (check == 1 && p_valid == true)
                    {
                        Response.Write("Valid User!");
                        user2 = new SqlCommand(query2, conn);
                        user2.ExecuteNonQuery();
                        user3 = new SqlCommand(query3, conn);
                        user3.ExecuteNonQuery();
                        user4 = new SqlCommand(query4, conn);
                        user4.ExecuteNonQuery();

                        Application["roll_no"] = username;
                        conn.Close();
                        Response.Redirect("Finance Login.aspx");
                    }
                    else
                    {
                        Response.Write("InValid User!");
                    }

                    break;

            }

            

           
        }

   
    }
}