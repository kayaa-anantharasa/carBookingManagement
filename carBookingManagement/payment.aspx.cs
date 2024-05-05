using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carBookingManagement
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            // Display alert message when "Pay Now" button is clicked
            Response.Write("<script>alert('Payment Successfully, Thank you');</script>");
        }

        protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPaymentMethod.SelectedValue == "card")
            {
                cardPaymentDetails.Style["display"] = "block";
                paypalPaymentDetails.Style["display"] = "none";
            }
            else if (ddlPaymentMethod.SelectedValue == "paypal")
            {
                cardPaymentDetails.Style["display"] = "none";
                paypalPaymentDetails.Style["display"] = "block";
            }
        }
    }
}
