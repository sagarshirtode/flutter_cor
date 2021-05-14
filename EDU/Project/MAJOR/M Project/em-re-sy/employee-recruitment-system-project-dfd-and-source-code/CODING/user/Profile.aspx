<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="user_Profile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" BackColor="Silver">
        <ItemTemplate>
            <table align="center" style="width: 428px; height: 183px">
                <tr>
                    <td align="center" colspan="2" style="background-color: #ff9900">
                        <strong>
                        My&nbsp; Profile</strong></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="background-color: #ff9900">
                        <strong>
                        Login Details</strong></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        UserName</td>
                    <td style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("uanme") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Password</td>
                    <td style="width: 100px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pwd") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="background-color: #ff9900">
                        <strong>
                        Personal Details</strong></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Name</td>
                    <td style="width: 100px">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px;">
                        Contact no</td>
                    <td style="width: 100px; height: 21px;">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("cno") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">
                        e-mailid</td>
                    <td style="width: 100px; height: 20px">
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("mailid") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 20px; background-color: #ff9900;" align="center">
                        <strong>
                        Technical Details</strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">
                        Qualification</td>
                    <td style="width: 100px; height: 20px">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("quali") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">
                        College</td>
                    <td style="width: 100px; height: 20px">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("college") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">persentage
                        Persentage</td>
                    <td style="width: 100px; height: 20px">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("persentage") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 20px; background-color: #ff9900;">
                        <strong>
                        Resume Summery</strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">
                        Industry</td>
                    <td style="width: 100px; height: 20px">
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("industry") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 20px">
                        Key Skills</td>
                    <td style="width: 100px; height: 20px">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("keyskill") %>' BackColor="Silver" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 20px">
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

    
</asp:Content>

