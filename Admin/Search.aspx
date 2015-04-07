<%@ Page Title="Search" Language="VB" MasterPageFile="~/AdminPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

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
    <div id="Search">
        <asp:Label ID="searchLabel" runat="server" Text="Search for an assignment by name:"></asp:Label><asp:TextBox ID="Search1" runat="server"></asp:TextBox><asp:Button ID="Searchbtn1" CssClass="searchBTN" runat="server" Text="Search" /><br />
         Show all assignments that are: <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Not Completed</asp:ListItem>
        </asp:DropDownList><asp:Button ID="Searchbtn" CssClass="searchBTN" runat="server" Text="Search" />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="aID" DataSourceID="SqlDataSource1" CssClass="cssgridview" AlternatingRowStyle-CssClass="alt">
        <Columns>
            
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:CheckBoxField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
        </Columns>
    </asp:GridView>
</asp:Content>

