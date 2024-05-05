<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="viewcar.aspx.cs" Inherits="carBookingManagement.viewcar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Add your CSS styles here */
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

        /* Table styling */
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th,
        .table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <header>
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        </header>
        <div class="left-column">
               <h2>View Car Bookings</h2>
         <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False"
    OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="id">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="location" HeaderText="Location" />
        <asp:BoundField DataField="date" HeaderText="Date" />
        <asp:BoundField DataField="starttime" HeaderText="Start Time" />
        <asp:BoundField DataField="endtime" HeaderText="End Time" />
        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>

        </div>
    </div>

</asp:Content>
