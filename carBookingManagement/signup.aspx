<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="carBookingManagement.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card {
            width: 60%;
        }
    </style>
    <div class="center">
        <div class="card">
            <div class="card-header">
                Signup
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="fullname" class="form-label">Full Name</label>
                    <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Enter your full name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Enter your username"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Enter your address"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Enter your email"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <asp:TextBox CssClass="form-control" ID="phone" runat="server" placeholder="Enter your phone number"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="plateNo" class="form-label">Plate Number</label>
                    <asp:TextBox CssClass="form-control" ID="plateNo" runat="server" placeholder="Enter your plate number"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="cpassword" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id="cpassword" placeholder="Enter your confirm password">
                </div>
                <asp:Button type="submit" ID="signup1" class="btn btn-primary" runat="server" OnClick="Signupbtn" Text="Signup" />
                <div class="signup-link">
                <a href="Admin.aspx">Admin Login  here</a><br />
               <a href="login.aspx">User login here</a>
            </div>
            </div>
        </div>
    </div>
</asp:Content>