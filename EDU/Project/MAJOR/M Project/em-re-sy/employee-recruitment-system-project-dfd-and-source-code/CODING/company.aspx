<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="company" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                    Company Login</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    UserId</td>
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
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="Button" Width="119px" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:HyperLink ID="HyperLink1" runat="server" Width="127px" NavigateUrl="~/register.aspx">Register?</asp:HyperLink></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label" Width="216px"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

