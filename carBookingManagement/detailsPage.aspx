<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="detailsPage.aspx.cs" Inherits="carBookingManagement.detailsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Define styles for the container */
        .container {
            margin-top: 50px;
            text-align: center;
        }
        
        /* Define styles for the textboxes */
        .textbox {
            width: 300px;
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        
        /* Define styles for the button */
        .btn-save {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        
        /* Define styles for the button on hover */
        .btn-save:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Enter Your Details</h2>
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" placeholder="Enter your name"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" placeholder="Enter your email"></asp:TextBox>
        <br />
        <asp:Button ID="btnSave" runat="server" CssClass="btn-save" Text="Save" OnClick="btnSave_Click" />
    </div>
</asp:Content>
