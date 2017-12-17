<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Button.css" rel="stylesheet" type="text/css" />
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style>
        body 
        {
	        margin: 0px;
	        padding: 0px;
	        width: 100%;
        }


        .menu
        {
            width : 100%;
            margin: 43px 0; 
            left: 0;
            position:fixed;
        } 
        ul 
        {   
	        width: 100%; 
            list-style: none; 
            margin: 0;
            padding: 0px; 
        }
        ul li 
        {
            width: 250px; 
            display:table;
        }
        ul li a
        {
            display: table-cell;
            width: 100%; 
            border-radius:0 8px 8px 0;
            height:32px;
            text-align: center;
            padding: 8px 0;
            background-color: #e4e4e4;
            color: #333;
            border: 1px solid #777;
            background: #e4e4e4;
            background-image: linear-gradient(top, #eee, #ccc);
            font-family:Maiandra GD;
            font-size:medium;
            vertical-align: middle;
        }
        ul li a:hover 
        {
            background: #b0ca34; /* Old browsers */
            background-color: #c2c2c2; 
            background-image: linear-gradient(top, #fafafa, #ddd);
        }
        ul li a,ul li a:focus, ul li a:visited, ul li a:hover, ul li a:active 
        {
            color: #000; 
            text-decoration: none; 
        }


        .menu1
        {
            width : 25%;
            margin: 10px 0; 
            right: 0;
            position:fixed;
            font-family:Maiandra GD;
            font-size:medium;
        } 
        .menu1 ul 
        { 
            list-style: none; 
            margin: 0;
            padding: 0px; 
        }
        .menu1 ul li
        {
            border-radius:0 0 0 0;
            padding: 8px 0;
            background-color: #e4e4e4;
            color: #333;
            border: 1px solid #777;
            background: #e4e4e4;
            background-image: linear-gradient(top, #eee, #ccc);
            vertical-align: middle;
            float:right;
        }
        
        .menu1 ul li:first-child {
            border-radius:8px 0 0 0;
        }
 
        .menu1 ul li:last-child {
            display:inline-block;
            border-radius:0 0 0 8px;
            height:248px;
            overflow:hidden;
        }
       
        
        .auto-style5 {
            width: 100%;
        }
        
        .auto-style6 {
            width: 27px;
        }
        .rght{
            float:right;
        }
        .center{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu">
        <ul style="list-style:none">     
            <li><a href="HomePage.aspx">Home</a></li>
            <li><a href="EmployeeDetails.aspx">View Profile</a></li>
            <li><a href="AddTimesheet.aspx">Add timesheet</a></li>
            <li><a href="AddProject.aspx">Add bug</a></li>      
            <li><a href="BugDetails.aspx">Bug details</a></li>
            <li><a href="TimesheetDetails.aspx">Timesheet details</a></li>
        </ul>
    </div>  

    <div>

    </div>

    <div class="menu1" >
        <div class="rght"> Welcome <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></div> 
        <br />
        <br />
        <ul style="list-style:none">
           <li ><strong><div class="center"> Notice</div></strong></li> 
           <li>
               <marquee direction="up" height="100%" scrolldelay="150" onmouseover="this.stop();" onmouseout="this.start();">
                <table class="auto-style5" style="table-layout:fixed" >
                    <tr valign="top">
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label2" runat="server" Text="">Meeting tomorrow at 9:30pm</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top" >
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label3" runat="server" Text="">Get ur aadhaar card for verification of your account</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label4" runat="server" Text="">Meeting tomorrow at 9:30pm</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top" >
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label5" runat="server" Text="">Get ur aadhaar card for verification of your account</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label6" runat="server" Text="">Meeting tomorrow at 9:30pm</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top" >
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label7" runat="server" Text="">Get ur aadhaar card for verification of your account</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="auto-style6"><strong>-></strong></td>
                        <td >
                          <asp:Label ID="Label8" runat="server" Text="">Meeting tomorrow at 9:30pm</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top" >
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label9" runat="server" Text="">Get ur aadhaar card for verification of your account</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label10" runat="server" Text="">Meeting tomorrow at 9:30pm</asp:Label>
                        </td>
                    </tr>
                    <tr valign="top" >
                        <td class="auto-style6"><strong>-></strong></td>
                        <td>
                          <asp:Label ID="Label11" runat="server" Text="">Get ur aadhaar card for verification of your account</asp:Label>
                        </td>
                    </tr>
                </table>
           </marquee>
            </li>
        </ul>
    </div>  

</asp:Content>


