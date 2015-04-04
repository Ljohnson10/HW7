﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Assignments
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="HWData" runat="server" ConnectionString="<%$ ConnectionStrings:ljohnsonHW7 %>" DeleteCommand="DELETE FROM [ljohnsonHW7] WHERE [aID] = @aID" InsertCommand="INSERT INTO [ljohnsonHW7] ([Class], [Name], [Desription], [DueDate], [Completed]) VALUES (@Class, @Name, @Desription, @DueDate, @Completed)" SelectCommand="SELECT * FROM [ljohnsonHW7]" UpdateCommand="UPDATE [ljohnsonHW7] SET [Class] = @Class, [Name] = @Name, [Desription] = @Desription, [DueDate] = @DueDate, [Completed] = @Completed WHERE [aID] = @aID">
        <DeleteParameters>
            <asp:Parameter Name="aID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Desription" Type="String" />
            <asp:Parameter DbType="Date" Name="DueDate" />
            <asp:Parameter Name="Completed" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Desription" Type="String" />
            <asp:Parameter DbType="Date" Name="DueDate" />
            <asp:Parameter Name="Completed" Type="Boolean" />
            <asp:Parameter Name="aID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="HWData" AutoGenerateColumns="False" AllowPaging="True" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Assignment Name" SortExpression="Name" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" />
            <asp:BoundField DataField="Completed" HeaderText="Completed?" SortExpression="Completed" />
            <asp:HyperLinkField DataNavigateUrlFields="aID" DataNavigateUrlFormatString="Details.aspx?aID={0}" HeaderText="Details" Text="Select" />
        </Columns>
    </asp:GridView>

</asp:Content>

