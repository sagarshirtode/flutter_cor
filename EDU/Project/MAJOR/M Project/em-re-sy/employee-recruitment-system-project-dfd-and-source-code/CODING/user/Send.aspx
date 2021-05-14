<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Send.aspx.cs" Inherits="user_inbox" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                    <strong>User Can Apply For Company</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    To</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    From</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Jobon</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Date</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="15px" Width="159px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Resume</td>
                <td style="width: 100px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Subject</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="63px" TextMode="MultiLine" Width="223px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Width="159px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

