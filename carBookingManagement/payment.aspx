<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="carBookingManagement.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <h2>Select Payment Method</h2> <br> <br>
            <div class="form-group">
                <asp:Label ID="lblPaymentMethod" runat="server" AssociatedControlID="ddlPaymentMethod">Choose Payment Method:</asp:Label>
                <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                    <asp:ListItem Text="Credit/Debit Card" Value="card"></asp:ListItem>
                    <asp:ListItem Text="PayPal" Value="paypal"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div id="cardPaymentDetails" runat="server" style="display:none;">
                <!-- Form fields for card payment --> <br/> <br/>
                <h3>Enter Card Details</h3>
                <div class="form-group">
                    <asp:Label ID="lblCardNumber" runat="server" AssociatedControlID="txtCardNumber">Card Number:</asp:Label>
                    <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" placeholder="Enter card number"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblExpiryDate" runat="server" AssociatedControlID="txtExpiryDate">Expiry Date:</asp:Label>
                    <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" placeholder="MM/YYYY"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCVV" runat="server" AssociatedControlID="txtCVV">CVV:</asp:Label>
                    <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" placeholder="CVV"></asp:TextBox>
                </div>
            </div>
            
            <div id="paypalPaymentDetails" runat="server" style="display:none;">
                <!-- Form fields for PayPal payment -->
                <h3>PayPal Login</h3>
                <div class="form-group">
                    <asp:Label ID="lblPayPalEmail" runat="server" AssociatedControlID="txtPayPalEmail">Email:</asp:Label>
                    <asp:TextBox ID="txtPayPalEmail" runat="server" CssClass="form-control" placeholder="Enter PayPal email" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPayPalPassword" runat="server" AssociatedControlID="txtPayPalPassword">Password:</asp:Label>
                    <asp:TextBox ID="txtPayPalPassword" runat="server" CssClass="form-control" placeholder="Enter PayPal password" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <br/>
            <asp:Button ID="btnPayNow" runat="server" Text="Pay Now" CssClass="btn btn-primary" OnClick="btnPayNow_Click" />
        </div>

      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script runat="server">
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

    protected void btnPayNow_Click(object sender, EventArgs e)
    {

    }
</script>
</asp:Content>
