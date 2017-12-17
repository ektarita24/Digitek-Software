<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AViewemployee.aspx.cs" Inherits="AViewemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Button.css" rel="stylesheet" type="text/css" />
    <link href="Layout.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />    
    
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />    
            <table align="center" class="style5">
                    <tr>
                        <td class="style11 text " colspan="6" align="center" >
                        User Registration
                    </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td align="center" class="text" width="20%">
                                <br />
                                Employee Name<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br />
                                <asp:TextBox ID="TxtEName" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEName" Display="Dynamic" ErrorMessage="Please Enter Your Name" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEName" Display="Dynamic" ErrorMessage="Name should contain only alphabets." ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[a-zA-Z ']+$">*</asp:RegularExpressionValidator>
                                <br />
                            </td>
                            <td align="center" style="font-family: &quot;Maiandra GD&quot;" width="20%">
                                <br />
                                Employee ID: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TxtEID" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtEID" Display="Dynamic" ErrorMessage="Employee ID should be numeric." ForeColor="Red" SetFocusOnError="true" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="auto-style6" colspan="6"></td>
                        </tr>
                        <tr>
                            <td align="center" class="text" width="20%">Username<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TxtEUser" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEUser" Display="Dynamic" ErrorMessage="Please Enter Your Username" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtEUser" Display="Dynamic" ErrorMessage="Username should have Minimum 6 Characters" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[\s\S0-9]{6,}$">*</asp:RegularExpressionValidator>
                            </td>
                            <td align="center" class="text" width="20%">Password<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br />
                                <asp:TextBox ID="TxtEPass" runat="server" CssClass="txtbox" Height="25px" TextMode="Password" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEPass" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEPass" Display="Dynamic" ErrorMessage="Password should have Minimum 8 Characters with 1 Upper Case, 1 Lower Case, 1 Digit and 1 Special Character." ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[a-zA-Z0-9!@#$%^()'&amp;.*-_\s]{8,100}$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="text" width="20%">Address<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br />
                                <asp:TextBox ID="TxtEAdd" runat="server" CssClass="txtbox" Height="25px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtEAdd" Display="Dynamic" ErrorMessage="Please Enter Your Address" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="center" class="text" width="20%">Date Of Birth<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br />
                                <asp:TextBox ID="TxtEDoB" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/Image/Calendar.gif" />
                                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" class="text" ForeColor="Red" Text=""></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtEDoB" Display="Dynamic" ErrorMessage="Please Select Your Date of Birth" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="text" width="20%">Mobile No.<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TxtEMob" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtEMob" Display="Dynamic" ErrorMessage="Please Enter Mobile No." ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtEMob" Display="Dynamic" ErrorMessage="Enter mobile number in correct format" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^(([\+][\d+]{1,3})?[ -]?)?(0)?[\d+]{10}$">*</asp:RegularExpressionValidator>
                            </td>
                            <td align="center" class="text" width="20%">Residence No.: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Residence No. should be in Digits" ForeColor="Red" SetFocusOnError="true" ValidationExpression="^((022)([- ]?))?(\d+){8}$">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="text" width="20%">Email ID<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br />
                                <asp:TextBox ID="TxtEEmail" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtEEmail" Display="Dynamic" ErrorMessage="Please Enter Your Email ID" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtEEmail" Display="Dynamic" ErrorMessage="Please Enter Valid Email ID" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                            </td>
                            <td align="center" class="text" width="20%">Date Of Joining<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TxtEDoJ" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" ImageUrl="~/Image/Calendar.gif" />
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" class="text" ForeColor="Red" Text=""></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtEDoJ" Display="Dynamic" ErrorMessage="Please Select Date of Joining" ForeColor="Red" SetFocusOnError="true">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="text" width="20%">
                                <br />
                                Blood Group: </td>
                            <td align="center" class="text" width="20%">
                                <br/>
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="txtbox" Height="25px" Width="200px"></asp:TextBox>
                            </td>
                            <td align="center" class="text" width="10%">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ForeColor="Red" ControlToValidate="TextBox11" ErrorMessage="Not a valid blood group.Please enter as eg.(A+)." runat="server" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^(a|A|b|B|ab|AB|o|O)[+-](ve)?$">*</asp:RegularExpressionValidator>
                            </td>
                            <td align="center" class="text" width="20%">Employee Type<sup>*</sup>: </td>
                            <td align="center" class="text" width="20%">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem class="style7" Selected="True" Value="Employee">Employee&nbsp;&nbsp;</asp:ListItem>
                                    <asp:ListItem class="style7">Admin</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td align="center" width="10%"></td>
                        </tr>
                        <tr>
                            <td align="center" class="text" colspan="6">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
                            </td>
                        </tr>
                        <tr>
                            <td align ="center" colspan="6" class="auto-style7">

                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="text" colspan="6">
                                <asp:Button ID="submit" runat="server" CssClass="button style7" Text="Submit" />
                                <asp:Button ID="cancel" runat="server" CausesValidation="false" CssClass="button style7" Text="Cancel" />
                                <asp:Button ID="reset" runat="server" CausesValidation="false" CssClass="button style7" Text="Reset" />
                            </td>
                        </tr>
                    </caption>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>


