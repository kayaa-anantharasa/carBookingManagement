<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="carBookingManagement.signup" %>
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
        signup
      </div>
      <div class="card-body">
        <form>
          <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <asp:TextBox  CssClass="form-control" ID="username" runat="server" placeholder="Enter your username"></asp:TextBox>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <asp:TextBox CssClass="form-control" ID="password"  runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
          </div>
            <div class="mb-3">
            <label for="password" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="cpassword" placeholder="Enter your confirm password">
          </div>
          <asp:button type="submit" ID="signup1" class="btn btn-primary" runat="server" OnClick="Signupbtn" Text="Signup" />
        </form>
      </div>
    </div>
  </div>
</asp:Content>
