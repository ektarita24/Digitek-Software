<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimesheetDetails.aspx.cs" Inherits="TimesheetDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Button.css" rel="stylesheet" type="text/css" />
    <link href="Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style5 {
            height: 51px;
            width: 140px;
        }
        .auto-style6 {
            height: 51px;
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <br />
    <table class="style5" align="center">
        <tr>
            <td class="style11" colspan="6" align="center">
                &nbsp;Timesheet Details</td>
        </tr>
       
        <tr>
            <td class="auto-style4" align="left">
                Bug ID:
            </td>
            <td class="auto-style6">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
            </td>
            <td></td>
             <td class="auto-style4" align="left">
                Duration:
            </td>
            <td class="auto-style5">&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="txtbox" runat="server" Height="30px" Width="200px">
                    <asp:ListItem Selected="True">Today</asp:ListItem>
                    <asp:ListItem>Last Week</asp:ListItem>
                    <asp:ListItem>Last Month</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td>
           </tr>
        <tr>
            <td class="auto-style4" align="left">
                Start Date:
            </td>
            <td class="auto-style6">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="25px" Width="200px" TextMode="SingleLine"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
            <td>
               
              
                        <br />
                <asp:ImageButton ID="ImageButton1" runat="server"  CausesValidation="False" ImageUrl="~/Image/Calendar.gif"/>
                <asp:Calendar ID="Calendar1" runat="server"  Visible="False" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" >
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                 
           </td>
           <td class="auto-style4" align="left">
                End Date:
            </td>
            <td class="auto-style5">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" Height="25px" Width="200px" TextMode="SingleLine"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
                <%--<asp:CompareValidator Type="Date"
    ControlToValidate="TextBox3" ControlToCompare="TextBox2"
    Operator="GreaterThanEqual" 
  Text="End date must be greater than the start date !" 
  Runat = "Server" xmlns:asp="#unknown"/>--%> 

            </td>
            <td>
               
               
                        <br />
                <asp:ImageButton ID="ImageButton2" runat="server"  CausesValidation="False" ImageUrl="~/Image/Calendar.gif"/>
                <asp:Calendar ID="Calendar2" runat="server"  Visible="False" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" >
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                       
           </td>
             
        </tr>
        <tr>
            <td class="style12" colspan="6" align="center">
                <asp:Button ID="Search" runat="server" Text="Search" CssClass="button style7 " />
               
            </td>
        </tr>
        
    </table>
</asp:Content>



