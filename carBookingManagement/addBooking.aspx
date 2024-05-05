<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="addBooking.aspx.cs" Inherits="carBookingManagement.addBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
             
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .container {
            display: flex;
            flex-wrap: wrap;
            width: 100%;
            max-width: 1200px; 
            margin: 0 auto; 
            padding: 20px;
        }

    
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

      
        .left-column,
        .right-column {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }
        .status-1 {
            background-color: green; 
        }
        .status-0 {
            background-color: red; 
        }
        .card-container {
            display: flex; 
            flex-wrap: wrap; 
            gap: 10px; 
        }
        .card {
            cursor: pointer; 
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            color: white; 
            width: 200px; 
        }
        .card a {
            color: white; 
            text-decoration: none; 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="left-column">
    <div class="card-container">
        <asp:Repeater ID="BookingRepeater" runat="server" OnItemCommand="BookingRepeater_ItemCommand">
    <ItemTemplate>
        <div class='card <%# Convert.ToInt32(Eval("status")) == 1 ? "status-1" : "status-0" %>'>
            <a href='<%# "detailsPage.aspx?id=" + Eval("id") + "&location=" + HttpUtility.UrlEncode(Eval("location").ToString()) + "&date=" + Eval("date") + "&starttime=" + Eval("starttime") + "&endtime=" + Eval("endtime") %>'>
                <p><strong>Location:</strong> <%# Eval("location") %></p>
                <p><strong>Date:</strong> <%# Eval("date", "{0:MM/dd/yyyy}") %></p>
                <p><strong>Start Time:</strong> <%# Eval("starttime") %></p>
                <p><strong>End Time:</strong> <%# Eval("endtime") %></p>
                <p><strong>Status:</strong> <%# Eval("status") %></p>
            </a>
        </div>
    </ItemTemplate>
</asp:Repeater>
    </div></div>
</asp:Content>
