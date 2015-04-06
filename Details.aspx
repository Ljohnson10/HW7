<%@ Page Title="Details" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="HWData" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW7 %>"  SelectCommand="SELECT * FROM [ljohnsonHW7] WHERE ([aID] = @aID)" >
    <DeleteParameters>
        <asp:Parameter Name="aID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
       
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="aID" QueryStringField="aID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
       
    </UpdateParameters>
</asp:SqlDataSource>
     
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="aID" DataSourceID="HWData">
        <EditItemTemplate>
           
        </EditItemTemplate>
        <InsertItemTemplate>
            
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        Class:
                    </td>
                    <td>
                        <asp:Label ID="tbClassName" runat="server" Text='<%# Bind("Class")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:Label ID="tbAssignmentName" runat="server" Text='<%# Bind("Name")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><asp:Label ID="tbDesc" runat="server" Text='<%# Bind("Description")%>' Height="20px" Width="200px" /></td>
                </tr>
                <tr>
                    <td>
                        Due Date (YYYY-MM-DD):
                    </td>
                    <td>
                        <asp:Label ID="tbDueDate" runat="server" Text='<%# Bind("DueDate")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Completed?:
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Completed") %>' Enabled="False" />
                    </td>
                </tr>
            </table>
            
           
           
            
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

