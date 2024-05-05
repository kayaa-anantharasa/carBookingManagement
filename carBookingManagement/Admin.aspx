<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="carBookingManagement.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
    .center {
      display: flex;
      justify-content: center;
      align-items: center;
    padding:20px;
    }
    .card{
        width:60%;
    }
  </style>
     <div class="center">
    <div class="card">
      <div class="card-header">
        Login
      </div>
      <div class="card-body">
        <div class="mb-3">
            <label for="username" class="form-label">Admin Username</label>
             <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Enter your Admin username"></asp:TextBox>

        </div>
          <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>

          </div>
        <asp:Button type="submit" ID="signup1" class="btn btn-primary" runat="server" OnClick="Admibtn" Text="login" />
          <div class="signup-link">
                <a href="login.aspx">Login  here</a><br />
                Don't have an account yet? <a href="signup.aspx">User Sign up here</a>
            </div>
      </div>
    </div>
  </div>
</asp:Content>

