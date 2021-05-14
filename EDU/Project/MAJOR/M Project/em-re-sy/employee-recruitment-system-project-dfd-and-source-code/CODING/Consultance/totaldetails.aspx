<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="totaldetails.aspx.cs" Inherits="Consultance_Sending" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                    User Details</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    ContactNO</td>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Width="88px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    emailid</td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Label" Width="82px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Qualification</td>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Text="Label" Width="84px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Industry</td>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Text="Label" Width="86px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="Label" Width="78px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="151px">Downloan Resume</asp:LinkButton></td>
            </tr>
        </table>
    </div>
</asp:Content>

