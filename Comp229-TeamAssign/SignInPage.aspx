<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Comp229_TeamAssign.SignInPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sign In Page</h1>
    <br />

    <table>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="passwordTxt" TextMode="Password"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="emailTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
