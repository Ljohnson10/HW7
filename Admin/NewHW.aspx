<%@ Page Title="New Assignment" Language="VB" MasterPageFile="~/AdminPage.master" AutoEventWireup="false" CodeFile="NewHW.aspx.vb" Inherits="NewHW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW7 %>" DeleteCommand="DELETE FROM [ljohnsonHW7] WHERE [aID] = @aID" InsertCommand="INSERT INTO [ljohnsonHW7] ([Class], [Name], [Description], [DueDate], [Completed]) VALUES (@Class, @Name, @Description, @DueDate, @Completed)" SelectCommand="SELECT * FROM [ljohnsonHW7]" UpdateCommand="UPDATE [ljohnsonHW7] SET [Class] = @Class, [Name] = @Name, [Description] = @Description, [DueDate] = @DueDate, [Completed] = @Completed WHERE [aID] = @aID">
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
        <UpdateParameters>
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DbType="Date" Name="DueDate" />
            <asp:Parameter Name="Completed" Type="Boolean" />
            <asp:Parameter Name="aID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="aID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
          
        </EditItemTemplate>
        <InsertItemTemplate>
             <table>
                <tr>
                    <td class="left">
                        Class*:
                    </td>
                    <td class="right">
                        <asp:TextBox ID="tbClassName" runat="server" Text='<%# Bind("Class")%>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvClass" runat="server" ErrorMessage="Please enter a class name!" ControlToValidate="tbClassName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="left">
                        Name*:
                    </td>
                    <td class="right">
                        <asp:TextBox ID="tbAssignmentName" runat="server" Text='<%# Bind("Name")%>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please enter an assignment name!" ControlToValidate="tbAssignmentName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="left">Description:</td>
                    <td class="right"><asp:TextBox ID="tbDesc" runat="server" Text='<%# Bind("Description")%>' Height="20px" Width="200px" /></td>
                </tr>
                <tr>
                    <td class="left">
                        Due Date (YYYY-MM-DD)*:
                    </td>
                    <td class="right">
                        <asp:TextBox ID="tbDueDate" runat="server" Text='<%# Bind("DueDate")%>' />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a due date in YYYY-MM-DD format!" ControlToValidate="tbDueDate" ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$"> </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="left">
                        Completed?:
                    </td>
                    <td class="right">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Completed") %>' Enabled="true" />
                    </td>
                </tr>
            </table>
           <p>
               *=Required Field
           </p>
            <asp:Button ID="InsertButton" class="searchBTN" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
            
        </InsertItemTemplate>
        <ItemTemplate>
            
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

