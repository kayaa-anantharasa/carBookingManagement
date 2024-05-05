<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="addcar.aspx.cs" Inherits="carBookingManagement.addcar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            width: 100%;
            max-width: 1200px; /* Limit the maximum width */
            margin: 0 auto; /* Center the container horizontally */
            padding: 20px;
        }

          /* Side menu styling */
        .side-menu {
            width: 100px; /* Adjust the width as needed */
            background-color: #343a40;
            padding: 10px; /* Adjust the padding to make it more compact */
            color: #fff;
        }

        .side-menu ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .side-menu li {
            margin-bottom: 5px; /* Reduce the margin between menu items */
        }

        .side-menu a {
            color: #fff;
            text-decoration: none;
        }

        .side-menu a:hover {
            color: #f8f9fa;
        }

        /* Left column styling */
        .left-column {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        /* Form styling */
        label {
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Button styling */
        #btnSubmit {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        #btnSubmit:hover {
            background-color: #0056b3;
        }

        /* Heading styling */
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <header>
            <!-- Include necessary JavaScript libraries here -->
        </header>
        <div class="left-column">
            <h2>Add a Parking Space</h2>
            <div class="form-group">
                <label for="location">Location:</label>
                <asp:TextBox ID="location" CssClass="form-control" runat="server" placeholder="Enter location" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <asp:TextBox ID="date" CssClass="form-control" runat="server" type="date" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="startTime">Start Time:</label>
                <asp:TextBox ID="startTime" CssClass="form-control" runat="server" type="time" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="endTime">End Time:</label>
                <asp:TextBox ID="endTime" CssClass="form-control" runat="server" type="time" required></asp:TextBox>
            </div>
           
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
