<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="ServiceAppointment._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class='row'>
<div class='col-lg-9'>
        <h1>Singa Aircon</h1>
        <p class="lead">Singa Airconditioning Pte Ltd (Singapore) is committed in giving the most astounding nature of administration to our clients.</p>
        <p>All things considered, we trust in giving our everything and best to clients, endeavoring to attain to most extreme. consumer loyalty and make ourselves as a respectable organization in Singapore. We mean to exceed expectations in the business sector without dismissing the nature of our administration.</p>
        <p>You can find us here:</p>
        </div>
    <div class='col-lg-3'>
    <asp:Calendar ID="Calendar1" runat="server" 
	BorderColor="#663300" BorderStyle="Solid" Font-Bold="True">
	<SelectedDayStyle Font-Bold="True"/>
	<TitleStyle Font-Bold="True"/>
    </asp:Calendar>
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" /><br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ads.xml">
        </asp:XmlDataSource>
    </div>
    <br />
    <div class='col-lg-12'>
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3988.7670107327685!2d103.86877291534242!3d1.3153336300303655!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd5a59af9fce4efa2!2sSinga+Airconditioning+Pte+Ltd!5e0!3m2!1sen!2ssg!4v1430276717284" width="100%" height="380" frameborder="0" style="border:0"></iframe>
    </div>
    </div>
</asp:Content>