<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Welcome.aspx.vb" Inherits="ServiceAppointment.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    Welcome To Singa Aircon Website!</p>
<p>
    <asp:Image ID="Image1" runat="server" Height="104px" 
        ImageUrl="~/Images/images (1).jpg" Width="299px" />
</p>
<p>
    You have&nbsp; Successfully&nbsp; completed your Registration.Pleae Continue To 
    login .</p>
<p>
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/loginregistration.aspx">Continue</asp:LinkButton>
</p>
</asp:Content>
