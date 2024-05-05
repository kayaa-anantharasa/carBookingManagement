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
    public partial class Admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null && Session["role"].ToString() == "admin")
            {
                Response.Redirect("~/addcar.aspx");
            }
        }
        private bool ValidateAdmin(string name, string password)
        {

            using (SqlConnection con = new SqlConnection(strcon))
            {
                string query = "SELECT COUNT(*) FROM admin WHERE name = @name AND password = @password";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@password", password);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count == 1;
                }
            }
        }
        protected void Admibtn(object sender, EventArgs e)
        {
            string adminName = username.Text.Trim();
            string adminPassword = password.Text;

            if (ValidateAdmin(adminName, adminPassword))
            {
                Response.Write("<script>alert('Admin login successfully.');</script>");
                Session["role"] = "admin";
                Session["name"] = adminName;
                Response.Redirect("~/addcar.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password.');</script>");

            }
        }
    }
}
