<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="addgjobs.aspx.cs" Inherits="Consultance_addgjobs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td style="background-color: #ff9900;" align="center" colspan="3">
                <strong>Add Interview Details</strong></td>
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
                Placeof &nbsp;Interview</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
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
                e-mail id</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px" align="center">
                <asp:Button ID="btn1" runat="server" Text="Submit" OnClick="btn1_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="background-color: #ff9900">
                <strong>Posting Details</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                            <asp:LinkButton ID="edit" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <asp:LinkButton ID="Update" runat="server" Text="Update" CommandName="Update"></asp:LinkButton>
                            <asp:LinkButton ID="cancel" runat="server" Text="Cancel" CommandName="Cancel"></asp:LinkButton>                            
                            </EditItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                            <asp:LinkButton ID="Delete" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            
                            
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
               <asp:Label ID="job" runat ="server" Text='<%#Eval("jobon")%>'></asp:Label>
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
                
                
                
                
                
                
                
                
                
                
                
                
             
                </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>

