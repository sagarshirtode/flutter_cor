<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 352px; height: 52px">
        <tr>
            <td align="center" colspan="2">
                <strong>Admin login</strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                UserName</td>
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
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="113px" />
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

