using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carBookingManagement
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void signup(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
    }
