<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="bookingpage.aspx.cs" Inherits="carBookingManagement.bookingpage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $("#startDatePicker").datepicker();
            $("#endDatePicker").datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            width: 100px;
            background-color: #f0f0f0;
            border-right: 1px solid #ccc;
            padding: 20px;
        }

        .side-menu ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .side-menu li {
            margin-bottom: 10px;
        }

        /* Left and right column styling */
        .left-column,
        .right-column {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        /* Form styling */
        label {
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            margin-top: 8px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Button styling */
        .btn-group {
            margin-top: 20px;
        }

        .btn-group .btn {
            margin-right: 10px;
        }

        /* Table styling */
        .table {
            width: 100%;
            border-collapse: collapse;
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


    <div class="container">
        <header>
            <!-- Include jQuery -->
<script src="path/to/jquery.min.js"></script>

<!-- Include Bootstrap JavaScript (after jQuery) -->
<script src="path/to/bootstrap.min.js"></script>

<!-- Include DataTables plugin (after jQuery) -->
<script src="path/to/jquery.dataTables.min.js"></script>
        </header>
        <div class="side-menu">
              <ul>
                <li><a href="order.aspx">Home</a></li>
                <li><a href="addProduct.aspx">Poduct</a></li>
                   <li><a href="addBooking.aspx">Add booking</a></li>
            </ul>
        </div>
        <div class="left-column">
                <div class="container">
        <div class="row">
            <div class="col-md-6">
                
                <div class="form-group">
                    <label for="startTime">Start Time:</label>
                    <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-control timeInput">
                        <asp:ListItem Text="00:00" Value="00:00"></asp:ListItem>
                        <asp:ListItem Text="01:00" Value="01:00"></asp:ListItem>
                        <asp:ListItem Text="02:00" Value="02:00"></asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-6">
               

                <div class="mb-3">

                    <label for="endTime" class="form-label">End Time:</label>
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" placeholder="End Date">
                        <asp:ListItem Text="00:00" Value="00:00"></asp:ListItem>
                        <asp:ListItem Text="01:00" Value="01:00"></asp:ListItem>
                        <asp:ListItem Text="02:00" Value="02:00"></asp:ListItem>
                    </asp:DropDownList>
                </div>



                
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    
                    <label for="Vehicle Type" class="form-label">Vehicle Type::</label>
                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" placeholder="Vehicle Type:">
                        <asp:ListItem Text="car" Value="car"></asp:ListItem>
                        <asp:ListItem Text="van" Value="van"></asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="btnSubmit" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
        </div>
    



</asp:Content>
