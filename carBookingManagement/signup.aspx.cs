using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace carBookingManagement
{
    public partial class signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Signupbtn(object sender, EventArgs e)
        {
            string fullname = this.fullname.Text.Trim();
            string username = this.username.Text.Trim();
            string address = this.address.Text.Trim();
            string email = this.email.Text.Trim();
            string phone = this.phone.Text.Trim();
            string plateno = this.plateNo.Text.Trim();
            string password = this.password.Text.Trim();

            if (CheckUsernameExists(username))
            {
                Response.Write("<script>alert('Username already exists. Please choose a different username.');</script>");
                return;
            }

            if (SignupUser(fullname, username, address, email, phone, plateno, password))
            {
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed to sign up. Please try again.');</script>");
            }
        }

        bool CheckUsernameExists(string username)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM users WHERE username = @username", con);
                    cmd.Parameters.AddWithValue("@username", username);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return true; // Consider it as exists to prevent signup on database connection failure
            }
        }

        bool SignupUser(string fullname, string username, string address, string email, string phone, string plateno, string password)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO users (fullname, username, address, email, phone, plateno, password) VALUES (@fullname, @username, @address, @email, @phone, @plateno, @password)", con);
                    cmd.Parameters.AddWithValue("@fullname", fullname);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@address", address);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@plateno", plateno);
                    cmd.Parameters.AddWithValue("@password", password);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}
