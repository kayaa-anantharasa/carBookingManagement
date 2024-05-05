using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carBookingManagement
{


    public partial class login : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null && Session["role"].ToString() == "user")
            {
                Response.Redirect("~/addBooking.aspx");
            }
        }

        protected void loginbtn(object sender, EventArgs e)
        {
            string username = this.username.Text.Trim();
            string password = this.password.Text.Trim();

            if (ValidateUser(username, password))
            {
                Session["role"] = "user";
                Session["name"] = username;
                Response.Write("<script>alert('Login Successful.');</script>");
                Response.Redirect("~/addBooking.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password. Please try again.');</script>");
            }
        }

        bool ValidateUser(string username, string password)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM users WHERE username = @username AND password = @password", con);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                return false;
            }
        }

    }
}