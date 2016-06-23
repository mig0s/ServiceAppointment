<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Mainmenu.aspx.vb" Inherits="ServiceAppointment.Mainmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/appointment.aspx" 
        Text="AppointMent" />
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/technical.aspx" 
        Text="Confirmation " />
</asp:Content>
