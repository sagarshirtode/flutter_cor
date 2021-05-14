<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="user_inbox" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 374px; height: 58px">
        <tr>
            <td align="center" colspan="2" style="height: 22px">
                User Inbox</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                    
                    
                     <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                        <asp:LinkButton ID="l1" runat="server" Text="Delete"  CommandName="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                       
                        <asp:TemplateField HeaderText="CompanyMailid">
                            <ItemTemplate>
                                <asp:Label ID="mail" runat="server" Text='<%#Eval("mfrom")%>' Width="100px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="date" runat="server" Text='<%#Eval("date")%>' Width="100px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Subject">
                            <ItemTemplate>
                                <asp:Label ID="sub" runat="server" Text='<%#Eval("subject")%>' Width="150px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <%-- <asp:HyperLinkField DataNavigateUrlFields="cmailid" DataNavigateUrlFormatString="~/compny/Userdetails.aspx?cmailid={0}"
                            HeaderText="Details" Text="View" />--%>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

