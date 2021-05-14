<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Jobdetatails.aspx.cs" Inherits="Consultance_Jobdetatails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 292px; height: 52px">
            <tr>
                <td colspan="2" bgcolor="#ff9900">
                    <strong>
                    Jobdetails</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

