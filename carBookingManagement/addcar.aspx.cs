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
    public partial class addcar : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            string location = this.location.Text.Trim();
            string date = this.date.Text.Trim();
            string startTime = this.startTime.Text.Trim();
            string endTime = this.endTime.Text.Trim();
         
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string query = "INSERT INTO booking (location, date, starttime, endtime, status) VALUES (@location, @date, @startTime, @endTime, @status)";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@location", location);
                        command.Parameters.AddWithValue("@date", date);
                        command.Parameters.AddWithValue("@startTime", startTime);
                        command.Parameters.AddWithValue("@endTime", endTime);
                        command.Parameters.AddWithValue("@status", 1);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            
                            Response.Write("<script>alert('Booking submitted successfully.');</script>");
                        }
                        else
                        {
                            
                            Response.Write("<script>alert('Failed to submit booking.');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}