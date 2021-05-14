<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registraion.aspx.cs" Inherits="registraion" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 428px; height: 183px">
        <tr>
            <td colspan="2" align="center">
                User Registration</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Login Details</td>
        </tr>
        <tr>
            <td style="width: 100px">
                UserName</td>
            <td style="width: 80px">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="color: #ff6600">
                EX:xyz@gmail.com</td>
        </tr>
        <tr>
            <td style="width: 100px">
                Password</td>
            <td style="width: 80px">
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Confirm Password</td>
            <td style="width: 80px">
                <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Personal Details</td>
        </tr>
        <tr>
            <td style="width: 100px">
                Name</td>
            <td style="width: 80px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Contact no</td>
            <td style="width: 80px">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                e-mailid</td>
            <td style="width: 80px; height: 20px">
                <asp:TextBox ID="txtmailid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                Technical Details</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                Qualification</td>
            <td style="width: 80px; height: 20px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>----select---</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>B.Tech</asp:ListItem>
                    <asp:ListItem>M.C.A</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                College</td>
            <td style="width: 80px; height: 20px">
                <asp:TextBox ID="txtcolg" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                Persentage</td>
            <td style="width: 80px; height: 20px">
                <asp:TextBox ID="txtper" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 20px">
                Resume Summery</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                Industry</td>
            <td style="width: 80px; height: 20px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>---select--</asp:ListItem>
                    <asp:ListItem>IT SoftWare</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                Key Skills</td>
            <td style="width: 80px; height: 20px">
                <asp:TextBox ID="txtskil" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                Upload Resume</td>
            <td style="width: 80px; height: 20px">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 20px">
                <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="Submit"
                    Width="223px" />
            </td>
        </tr>
    </table>
</asp:Content>

