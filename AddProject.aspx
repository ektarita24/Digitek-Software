<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddProject.aspx.cs" Inherits="AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Button.css" rel="stylesheet" type="text/css" />
    <link href="Layout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
        .auto-style9 {
            height: 70px;
            width: 20%;
        }
        .auto-style10 {
            height: 70px;
            width: 5%;
        }
        .auto-style11 {
            height: 70px;
            width: 35%;
        }
        .auto-style12 {
            height: 70px;
            width: 23%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <br />
    <br />
    <table class="style5" align="center">

        <tr>
            <td class="style11" colspan="5" align="center">&nbsp;Add Bug</td>
        </tr>

        <tr>
            <td colspan="5" align="right">&nbsp;</td>
        </tr>
 
        <tr >
            <td align="left" class="auto-style9" >Project Name:</td>
            <td class="auto-style12"> 
                &nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="txtbox" runat="server" style="margin-left: 0px" Height="25px" Width="152px">
                    <asp:ListItem class="style7" style="background-color:#ddd;width:175px;" Selected="True">Project A</asp:ListItem>
                    <asp:ListItem class="style7" style="background-color:#ddd;width:175px;">Project B</asp:ListItem>
                    <asp:ListItem class="style7" style="background-color:#ddd;width:175px;">Project C </asp:ListItem>
                    <asp:ListItem class="style7" style="background-color:#ddd;width:175px;">Project D</asp:ListItem>
                    <asp:ListItem class="style7" style="background-color:#ddd;width:175px;">Project E</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="left" class="auto-style10" ></td> 
            <td align="left" class="auto-style9">
                Estimated Hours
                <asp:Panel ID="Panel1" runat="server" style="display: inline;"><sup>*</sup>
                        </asp:Panel>:
            </td>
            <td class="auto-style11">
                &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter estimated hours in valid format" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[0-9]*\.?[0-9]*">*</asp:RegularExpressionValidator>
                <asp:Panel ID="Panel2" runat="server" style="display: inline;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter estimated hours " ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                        </asp:Panel>
            </td> 
        </tr>

        <tr>
            <td align="left" class="auto-style9">
                Bug ID<sup>*</sup>:
            </td>
            <td class="auto-style12" >
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please enter Bug ID in valid format" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please enter Bug ID " ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
            </td>
            <td align="left" class="auto-style10">
                
            </td>
            <td align="left" class="auto-style9">
                Actual Hours<sup>*</sup>:
            </td>
            <td class="auto-style11">
                &nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Please enter Actual Hours " ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Please enter actual hours in valid format" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[0-9]*\.?[0-9]*">*</asp:RegularExpressionValidator>
            </td>      
        </tr>

        <tr>
            <td align="left" class="auto-style9">
                Type<sup>*</sup>:
            </td>
            <td class="auto-style12">
               <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                    <asp:ListItem class="style7" Value="CR" Text="CR" Selected="True" ></asp:ListItem>
                    <asp:ListItem class="style7" Value="Bug" Text="Bug"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td align="left" class="auto-style10" ></td> 
            <td align="left" class="auto-style9">
                Balance Hours:
            </td>
            <td class="auto-style11">
                &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Please enter balance hours in valid format" ForeColor="Red" SetFocusOnError="true" ValidationExpression="-?[0-9]*\.?[0-9]*">*</asp:RegularExpressionValidator>
            </td>          
        </tr>

        <tr>            
            <td align="left" class="auto-style9">
                Description<sup>*</sup>:
            </td>
            <td class="auto-style12">
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" Height="35px" Width="145px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter Description" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>          
            </td>
            <td  align="left" class="auto-style10">
                
            </td> 
            <td align="left" class="auto-style9">
                Status:
            </td>
            <td class="auto-style11">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem class="style7" Selected="True" Value="Work in Progress">Work in progress</asp:ListItem>
                    <asp:ListItem class="style7">Closed</asp:ListItem>
                </asp:RadioButtonList>
            </td>
             
        </tr>

        <tr>
            <td colspan="5">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false"/>
            </td>
        </tr>

        <tr>
            <td colspan="5" align="right">&nbsp;</td>
        </tr>

        <tr>
            <td colspan="5" align="center">
                <asp:Button ID="Button1" runat="server" Text="Add" class="button style7" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" class="button style7"  CausesValidation="false" PostBackUrl="~/HomePage.aspx"/>
                <asp:Button ID="Button3" runat="server" Text="Reset" class="button style7" CausesValidation="false"/>
            </td>
        </tr>

    </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>







