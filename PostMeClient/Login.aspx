<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PostMeClient.Login" %>

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
