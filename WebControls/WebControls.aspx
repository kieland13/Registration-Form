<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" Inherits="WebControls.WebControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Controls Demonstration</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Registration Form</h3>
            <p>
                Please fill in all fields and click the Register button.</p>
            <p>
                <asp:Image ID="userInformationImage" runat="server" ImageUrl="~/images/user.png" />
            </p>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="firstNameImage" runat="server" ImageUrl="~/images/fname.png" />
                        <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="fNameValidate" runat="server" ControlToValidate="firstNameTextBox" Display="Dynamic" ErrorMessage="Enter first name in correct form" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Image ID="lastNameImage" runat="server" ImageUrl="~/images/lname.png" />
                        <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="lNameValidator" runat="server" ControlToValidate="lastNameTextBox" Display="Dynamic" ErrorMessage="Enter last name in correct form" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="emailImage" runat="server" ImageUrl="~/images/email.png" />
                        <asp:TextBox ID="emailTextbox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="emailFieldValidate" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" ErrorMessage="Enter an email address" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="emailValidate" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" EnableTheming="False" ErrorMessage="Enter email in correct form (something@something.com)" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:Image ID="phoneImage" runat="server" ImageUrl="~/images/phone.png" />
                        <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="phoneFieldValidator" runat="server" ControlToValidate="phoneTextBox" Display="Dynamic" ErrorMessage="Enter a phone number" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="phoneValidate" runat="server" ControlToValidate="phoneTextBox" Display="Dynamic" ErrorMessage="Enter phone in correct form ###-###-####" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Image ID="publicationsImage" runat="server" ImageUrl="~/images/publications.png" />
        <br />
        Which book would you like information about?<asp:DropDownList ID="booksDropDownList" runat="server">
            <asp:ListItem Value="-1">Select...</asp:ListItem>
            <asp:ListItem Value="Visual Basic 2012 How to Program">Visual Basic 2012 How to Program</asp:ListItem>
            <asp:ListItem>Visual C# 2012 How to Program</asp:ListItem>
            <asp:ListItem>Java How to Program</asp:ListItem>
            <asp:ListItem>C++ How to Program</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator" runat="server" ControlToValidate="booksDropDownList" Display="Dynamic" ErrorMessage="Choose a book" ForeColor="Red" Operator="NotEqual" ValueToCompare="-1"></asp:CompareValidator>
        <br />
        <asp:HyperLink ID="booksHyperLink" runat="server" NavigateUrl="http://www.deitel.com" Target="_blank">Click here to view more information about our books</asp:HyperLink>
        <br />
        <asp:Image ID="osImage" runat="server" ImageUrl="~/images/os.png" />
        <br />
        <asp:RadioButtonList ID="osRadioButtonList" runat="server">
            <asp:ListItem>Windows 8</asp:ListItem>
            <asp:ListItem>Windows 7</asp:ListItem>
            <asp:ListItem>Mac OS X</asp:ListItem>
            <asp:ListItem>Linux</asp:ListItem>
            <asp:ListItem Selected="True">Other</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="registerButton" runat="server" OnClick="registerButton_Click" Text="Register"/>
    </form>
</body>
</html>
