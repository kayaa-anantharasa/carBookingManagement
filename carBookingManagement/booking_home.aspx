<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="booking_home.aspx.cs" Inherits="carBookingManagement.booking_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .booking-options {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .booking-options li {
            display: inline;
            margin-right: 20px;
        }

        .booking-options li a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            padding: 5px 10px;
            border: 2px solid #333;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .booking-options li a:hover {
            background-color: #333;
            color: #fff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Welcome to Car Booking Home Page</h2>
        <ul class="booking-options">
            <li><a href="bookingpage.aspx">New Booking</a></li>
            <li><a href="mybooking.aspx">My Booking</a></li>
        </ul>
    </div>
</asp:Content>
