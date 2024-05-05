using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace carBookingManagement
{
    public partial class addBooking : System.Web.UI.Page
    {
        
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
              
                BindBookingData();
            }
        }

      
        private void BindBookingData()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT id, location, date, starttime, endtime, status FROM booking WHERE date = @CurrentDate", con))
                {
                    cmd.Parameters.AddWithValue("@CurrentDate", DateTime.Today);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    BookingRepeater.DataSource = dt;
                    BookingRepeater.DataBind();
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
        }

        protected void BookingRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}