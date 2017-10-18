<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="TheatreForm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>The Theatre Booking Company</h1> </div>
        <div>We are booking tickets from November 2017 (minimum 2 tickets per booking)</div>
        <div>
        <table class="nav-justified" style="width: 167%">
            <tr>
                <td style="width: 248px">Enter Date required:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Please enter a date"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter a date between 01/11/2017 - 30/11/2017" MaximumValue="30/11/2017" MinimumValue="01/11/2017" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 248px">Enter the number of tickets:</td>
                <td>
                    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNumber" ErrorMessage="Please add number of tickets"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvTickets" runat="server" ControlToValidate="txtNumber" ErrorMessage="Enter 2 tickets or above" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="2"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 248px">Enter email: </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="please add an email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 248px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>

        
    </div>

</asp:Content>
