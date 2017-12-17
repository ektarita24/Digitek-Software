<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Button.css" rel="stylesheet" type="text/css" />
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style>
        .style5
        {
            width: 40%;
            border-collapse: collapse;
            border-spacing: 0; 
        }
        .style6
        {
            height: 38px;
            background-color: #FFE784;
        }  
        .style8
        {
            height: 51px;
            background-color: #FFE784; 
            font-family: 'Maiandra GD'; 
            font-size: medium; 
            font-weight: bold;
        }
        .style9
        {
            height: 51px;
            width: 219px;
            background-color: #FFE784; 
            color: #000000; 
            font-family: 'Maiandra GD'; 
            font-size: medium; 
            font-weight: bold;
        }
        .style10
        {
            height: 51px;
            background-color: #FFE784;
        }
        .style11
        {
            height: 56px;
            border-radius: 8px 8px 0 0;
            font-family: 'Maiandra GD'; 
            font-size: xx-large; 
            font-weight: bold; 
            background-color: #F5C700; 
            color: #000000;
        }
        .style12
        {
            height: 51px;  
            background-color: #FFE784;
        }
        .style13
        {
            height: 31px;
            border-radius: 0 0 8px 8px;
            background-color: #FFE784; 
            font-family: 'Maiandra GD'; 
            font-style: italic; 
            color: #000080;
        }
        .auto-style3 
        {
            width: 219px;
            background-color: #FFE784; 
            color: #000000; 
            font-family: 'Maiandra GD'; 
            font-size: medium; 
            font-weight: bold;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <br />
    <br />
    <table class="style5" align="center" >
        <tr>
            <td class="style11" colspan="2" align="center">
                LOGIN
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2" align="right">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style9" align="right">
                Username:
            </td>
            <td class="style10">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="25px" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" align="right">
                Password:
            </td>
            <td class="style6">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="25px" Width="175px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12" align="center" colspan="2">
                <a href="" class="button style7">Login</a>
                <a href="" class="button style7">New Registration</a>
            </td>
        </tr>
        <tr>
            <td class="style13" align="center" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True">Forgot Password</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

