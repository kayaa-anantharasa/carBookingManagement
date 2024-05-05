using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace carBookingManagement
{
    public partial class viewcar : System.Web.UI.Page
    {
        // Connection string
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind GridView on initial page load
                BindGridView();
            }
        }

        // Method to fetch data from the database and bind it to the GridView
        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT id, location, date, starttime, endtime, status FROM booking", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        // Event handler for editing a row in the GridView
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        // Event handler for updating a row in the GridView
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int rowIndex = e.RowIndex;
                if (rowIndex >= 0 && rowIndex < GridView1.Rows.Count)
                {
                    GridViewRow row = GridView1.Rows[rowIndex];
                    int bookingId = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);
                    string location = (row.FindControl("txtLocation") as TextBox)?.Text;
                    string date = (row.FindControl("txtDate") as TextBox)?.Text;
                    string startTime = (row.FindControl("txtStartTime") as TextBox)?.Text;
                    string endTime = (row.FindControl("txtEndTime") as TextBox)?.Text;
                    string status = (row.FindControl("txtStatus") as TextBox)?.Text;

                    // Update the record in the database
                    string updateQuery = "UPDATE booking SET location = @location, date = @date, starttime = @starttime, endtime = @endtime, status = @status WHERE id = @id";
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                        {
                            cmd.Parameters.AddWithValue("@location", location);
                            cmd.Parameters.AddWithValue("@date", date);
                            cmd.Parameters.AddWithValue("@starttime", startTime);
                            cmd.Parameters.AddWithValue("@endtime", endTime);
                            cmd.Parameters.AddWithValue("@status", status);
                            cmd.Parameters.AddWithValue("@id", bookingId);
                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Exit edit mode
                    GridView1.EditIndex = -1;
                    // Rebind the GridView
                    BindGridView();
                }
                else
                {
                    // Handle the case where the row index is out of range
                    throw new Exception("Row index is out of range.");
                }
            }
            catch (Exception ex)
            {
                // Handle the exception, log error, display message, etc.
                // Example:
                Console.WriteLine("Error updating row: " + ex.Message);
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bookingId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            // Delete the record from the database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM booking WHERE id = @id", con))
                {
                    cmd.Parameters.AddWithValue("@id", bookingId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindGridView(); // Rebind the GridView after deletion
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }
    }
}
