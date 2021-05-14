<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userdetails.aspx.cs" Inherits="compny_Userdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="z-index: 102; left: 293px; position: absolute; top: 179px">
            <tr>
                <td colspan="2">
                    </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    cmailid</td>
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
                    jobon</td>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Text="Label" Width="84px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    date</td>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Text="Label" Width="86px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    subject</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="151px">Downloan Resume</asp:LinkButton></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/compny/inbox.aspx"
                        Width="91px">Back</asp:HyperLink></td>
            </tr>
        </table>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Height="102px"
            Style="z-index: 101; left: 186px; position: absolute; top: 63px" Width="513px" />
    
    </div>
    </form>
</body>
</html>
