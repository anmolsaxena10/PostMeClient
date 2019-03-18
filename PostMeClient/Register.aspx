<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PostMeClient.Register" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            hello
        </div>
    </form>
</body>
</html>--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div>
        <table>
            <tr>
                <td style="height: 33px; width: 114px;">Username </td>
                <td style="height: 33px">
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 35px; width: 114px;">Password </td>
                <td style="height: 35px">
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 35px; width: 114px;">First Name </td>
                <td style="height: 35px">
                    <asp:TextBox ID="first_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 29px; width: 114px;">Last Name </td>
                <td style="height: 29px">
                    <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 114px">
                    <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" Width="107px" />
                </td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" Width="123px" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>   