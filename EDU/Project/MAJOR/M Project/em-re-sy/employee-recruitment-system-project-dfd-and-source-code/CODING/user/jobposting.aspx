<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="jobposting.aspx.cs" Inherits="user_jobposting" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 483px; height: 137px">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; Job Posting</td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Name</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Company</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcmpy" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Job Location</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Job Decsription</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                Cotact No</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Emailid</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtmailid" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btn1" runat="server" Text="Submit" /></td>
        </tr>
    </table>
</asp:Content>

