<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Homework.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <br />
        
         <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Height="16px" Width="285px"  ></asp:TextBox>
        <br />
        <br />
       
        

         Your message:<br /> 
        
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="50" TextMode="MultiLine"  ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" CssClass="Buttons" />

        
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        
        <%End If%>
    </div>
</asp:Content>

