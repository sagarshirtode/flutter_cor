<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobopening.aspx.cs" Inherits="compny_jobopening" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <tr>
                <td align="center" colspan="3" style="background-color: #ff9900">
                    <strong>Add Job Openig detils Details</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Jobon</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Company</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Job Description</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Interview on</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="center" style="width: 100px">
                    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Submit" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="background-color: #ff9900">
                    <strong>Posting Details</strong></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;<asp:GridView ID="GridView1" runat="server" Height="135px" Width="361px">
                    </asp:GridView>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/compny/inbox.aspx"
                        Width="91px">Back</asp:HyperLink></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
