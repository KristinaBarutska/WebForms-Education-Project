<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<%@ Register src="UserControls/Header.ascx" tagname="Header" tagprefix="UserControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 189px;
        }
    </style>
</head>
<body>
    <form defaultbutton="SubmitButton" defaultfocus="FirstNameTextBox" id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <UserControl:Header ID="Header1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">First Name</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Please enter a first name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter a last name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Birthdate</td>
                <td>
                    <asp:TextBox ID="BirthdateTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BirthdateTextBox" ErrorMessage="Please enter a birthday">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="BirthdateTextBox" ErrorMessage="Please enter a valid date" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td>
                    <asp:DropDownList ID="StatesDropDown" runat="server">
                        <asp:ListItem Value="">Select one</asp:ListItem>
                        <asp:ListItem>Sofia</asp:ListItem>
                        <asp:ListItem>Plovdiv</asp:ListItem>
                        <asp:ListItem>Varna</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="StatesDropDown" ErrorMessage="Please select a state">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <br />
                    <br />
                    <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
