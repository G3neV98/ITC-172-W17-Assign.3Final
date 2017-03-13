<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<link href="Assign3.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login page: </h1>

        <table>

            <tr>
                <td>Please type in your email to make your User Name:</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Please enter your Password: </td>
                <td>
                    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Text="Submit" OnClick="LoginButton_Click" />
                </td>
                <td>
                    <asp:Label ID="ResultLabel" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
