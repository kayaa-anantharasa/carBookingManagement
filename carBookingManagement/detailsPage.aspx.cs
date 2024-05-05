using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace carBookingManagement
{
    public partial class detailsPage : System.Web.UI.Page
    {
        // Connection string
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate textboxes with query string parameters
                txtName.Text = Request.QueryString["name"];
                txtEmail.Text = Request.QueryString["email"];
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string location = Request.QueryString["location"];
                string date = Request.QueryString["date"];
                string starttime = Request.QueryString["starttime"];
                string endtime = Request.QueryString["endtime"];
                int bookingId = Convert.ToInt32(Request.QueryString["id"]);

                // Save user details to the database history table
                SaveUserDetailsToHistory(name, email, location, date, starttime, endtime);

                // Update the status in the booking table
                UpdateBookingStatus(bookingId);

                Response.Write("<script>alert('Added Successfully....');</script>");
                Response.Redirect("payment.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred while saving data. Please try again later.');</script>");

                
            }
        }

        // Method to save user details to the history table
        private void SaveUserDetailsToHistory(string name, string email, string location, string date, string starttime, string endtime)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO History (Name, Email, Location, Date, StartTime, EndTime) VALUES (@Name, @Email, @Location, @Date, @StartTime, @EndTime)", con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Location", location);
                    cmd.Parameters.AddWithValue("@Date", date);
                    cmd.Parameters.AddWithValue("@StartTime", starttime);
                    cmd.Parameters.AddWithValue("@EndTime", endtime);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        // Method to update the status in the booking table
        // Method to update the status in the booking table
        private void UpdateBookingStatus(int bookingId)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE booking SET status = 0 WHERE id = @BookingId", con))
                {
                    cmd.Parameters.AddWithValue("@BookingId", bookingId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}
