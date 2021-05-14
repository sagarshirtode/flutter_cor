<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 352px; height: 52px">
        <tr>
            <td colspan="2" align="center">
                <strong>
                User Login</strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Userid</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Password</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="113px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
                <asp:Label ID="Label1" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/registraion.aspx">NewUser?</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

