<%@ Page Title="" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Admin/Default.aspx">
        <LoginButtonStyle CssClass="searchBTN" />
    </asp:Login>
        </center>
</asp:Content>

