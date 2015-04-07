<%@ Page Title="Details" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Details">
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
                    <td class="left">
                        Class:
                    </td>
                    <td class="right">
                        <asp:Label ID="tbClassName" runat="server" Text='<%# Bind("Class")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td class="left">
                        Name:
                    </td>
                    <td class="right">
                        <asp:Label ID="tbAssignmentName" runat="server" Text='<%# Bind("Name")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td class="left">Description:</td>
                    <td class="right"><asp:Label ID="tbDesc" runat="server" Text='<%# Bind("Description")%>' Height="20px" Width="200px" /></td>
                </tr>
                <tr>
                    <td class="left">
                        Due Date (YYYY-MM-DD):
                    </td>
                    <td class="right">
                        <asp:Label ID="tbDueDate" runat="server" Text='<%# Bind("DueDate")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td class="left">
                        Completed?:
                    </td>
                    <td class="right">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Completed") %>' Enabled="False" />
                    </td>
                </tr>
            </table>
            
           
           
            
        </ItemTemplate>
        
    </asp:FormView>
        </div>
</asp:Content>


