<%@ Page Title="" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="HWData" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW7 %>" DeleteCommand="DELETE FROM [ljohnsonHW7] WHERE [aID] = @aID" InsertCommand="INSERT INTO [ljohnsonHW7] ([Class], [Name], [Description], [DueDate], [Completed]) VALUES (@Class, @Name, @Description, @DueDate, @Completed)" SelectCommand="SELECT * FROM [ljohnsonHW7] WHERE ([aID] = @aID)" UpdateCommand="UPDATE [ljohnsonHW7] SET [Class] = @Class, [Name] = @Name, [Description] = @Description, [DueDate] = @DueDate, [Completed] = @Completed WHERE [aID] = @aID">
    <DeleteParameters>
        <asp:Parameter Name="aID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Class" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter DbType="Date" Name="DueDate" />
        <asp:Parameter Name="Completed" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="aID" QueryStringField="aID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Class" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter DbType="Date" Name="DueDate" />
        <asp:Parameter Name="Completed" Type="Boolean" />
        <asp:Parameter Name="aID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
     <asp:Label ID="lbl_deletedRec" runat="server"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="aID" DataSourceID="HWData">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        Class*:
                    </td>
                    <td>
                        <asp:TextBox ID="tbClassName" runat="server" Text='<%# Bind("Class")%>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvClass" runat="server" ErrorMessage="Please enter a class name!" ControlToValidate="tbClassName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name*:
                    </td>
                    <td>
                        <asp:TextBox ID="tbAssignmentName" runat="server" Text='<%# Bind("Name")%>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please enter an assignment name!" ControlToValidate="tbAssignmentName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><asp:TextBox ID="tbDesc" runat="server" Text='<%# Bind("Description")%>' Height="20px" Width="200px" /></td>
                </tr>
                <tr>
                    <td>
                        Due Date (YYYY-MM-DD)*:
                    </td>
                    <td>
                        <asp:TextBox ID="tbDueDate" runat="server" Text='<%# Bind("DueDate")%>' />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a due date in YYYY-MM-DD format!" ControlToValidate="tbDueDate" ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$"> </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Completed?:
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Completed") %>' Enabled="true" />
                    </td>
                </tr>
            </table>
           <p>
               *=Required Field
           </p>
            
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        Class*:
                    </td>
                    <td>
                        <asp:Label ID="tbClassName" runat="server" Text='<%# Bind("Class")%>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Name*:
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
                        Due Date (YYYY-MM-DD)*:
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
            
           
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

