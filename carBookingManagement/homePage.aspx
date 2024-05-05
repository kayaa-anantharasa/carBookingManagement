 <%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="carBookingManagement.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Custom CSS for enhancing design */
        .welcome-message {
            text-align: center;
            font-size: 24px;
            margin-top: 50px;
        }

        .content-wrapper {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .content {
            text-align: center;
            margin-top: 20px;
        }

        .content img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            border: 5px solid #333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <div class="welcome-message">
            Welcome to Car Parking Management System
        </div>
        <div class="content">
            <p>This is the homepage of our car parking management system.</p>
            <p>Add your content and functionality here.</p>
        </div>
    </div>
</asp:Content>
