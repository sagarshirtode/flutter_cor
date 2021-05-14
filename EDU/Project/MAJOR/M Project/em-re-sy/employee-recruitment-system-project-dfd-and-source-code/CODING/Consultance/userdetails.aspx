<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="Consultance_userdetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                    View User Details</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                    
                    
                    <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                    <asp:Label ID="name" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="Contactno">
                    <ItemTemplate>
                    <asp:Label ID="name" runat="server" Text='<%#Eval("cno")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Emailid">
                    <ItemTemplate>
                    <asp:Label ID="name" runat="server" Text='<%#Eval("mailid")%>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:HyperLinkField DataNavigateUrlFields="name" DataNavigateUrlFormatString="~/Consultance/totaldetails.aspx?name={0}"
                            HeaderText="Details" Text="View" />
                    
                    
                    
                    
                    </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

