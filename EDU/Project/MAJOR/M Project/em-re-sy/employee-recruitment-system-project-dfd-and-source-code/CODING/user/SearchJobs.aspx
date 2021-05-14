<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SearchJobs.aspx.cs" Inherits="user_SearchJobs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                    Search for jobs</td>
            </tr>
            <tr>
                <td colspan="2">
                    Select Your Desired Feild &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1"
                        runat="server">
                    </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1"
                        runat="server" OnClick="Button1_Click" Text="Search" Width="111px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" > 
                     
                        <Columns>
                           
                            <asp:TemplateField HeaderText="Companyid">
                                <ItemTemplate>
                                    <asp:Label ID="pif" runat="server" Text='<%#Eval("pif")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="pif1" runat="server" Text='<%#Eval("pif")%>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>
                          
                            <asp:TemplateField HeaderText="JobOn">
                                <ItemTemplate>
                                    <asp:Label ID="job" runat="server" Text='<%#Eval("jobon")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="job1" runat="server" Text='<%#Eval("jobon")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Company">
                                <ItemTemplate>
                                    <asp:Label ID="com" runat="server" Text='<%#Eval("com")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="com1" runat="server" Text='<%#Eval("com")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Location">                            
                                <ItemTemplate>
                                    <asp:Label ID="loc" runat="server" Text='<%#Eval("location")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="loc1" runat="server" Text='<%#Eval("location")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="JobDescription">
                                <ItemTemplate>
                                    <asp:Label ID="jdesc" runat="server" Text='<%#Eval("jdesc")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="jdesc1" runat="server" Text='<%#Eval("jdesc")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="emailid">
                                <ItemTemplate>
                                    <asp:Label ID="mail" runat="server" Text='<%#Eval("mail")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="mail1" runat="server" Text='<%#Eval("mail")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:HyperLinkField DataNavigateUrlFields="jobon,mail," DataNavigateUrlFormatString="~/user/send.aspx?jobon={0}&mail={1}"
                            HeaderText="Details" Text="Apply" />
                            
                             
                                                                                   
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

