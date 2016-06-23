<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Suggestions.aspx.vb" Inherits="ServiceAppointment.Suggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-weight: bold; font-size: x-large; font-style: normal; color: #000000">
&nbsp;Thank Your For Your Feedback</p>
    
        <table>
    <tr>
        <td>
            Name :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a" CausesValidation="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Email :<br />
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" ValidationGroup="a"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Contact :</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a" CausesValidation="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Comments :</td>
        <td>
            <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></td>
    </tr>
</table>
    <asp:Button ID="Button1" runat="server" Text="Submit" onclientclick="window.alert('Thank You! Your feedback is highly appreciated!')"/>
</asp:Content>

