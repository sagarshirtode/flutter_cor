<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendconfirmation.aspx.cs" Inherits="compny_sendconfirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="left: 226px; position: absolute; top: 164px; z-index: 100;">
            <tr>
                <td colspan="2" align="center">
                    <strong>Send Confirmaion Details</strong></td>
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
                    Date</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="15px" Width="159px"></asp:TextBox></td>
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
                    <asp:Button ID="Button1" runat="server" Text="Send" Width="159px" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/compny/inbox.aspx"
                        Width="91px">Back</asp:HyperLink></td>
            </tr>
        </table>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Height="102px"
            Style="z-index: 101; left: 129px; position: absolute; top: 47px" Width="513px" />
    
    </div>
    </form>
</body>
</html>
