<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signupmemeber.aspx.vb" Inherits="ServiceAppointment.Signupmemeber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #TextArea1
        {
            height: 48px;
            width: 185px;
        }
        #txtarea
        {
            width: 201px;
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Field Can not Be Empty" ControlToValidate="txtname" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Address Field Can not Be Empty" 
                    ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number :</td>
            <td>
                <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Contact Number Field Can not Be Empty" 
                    ControlToValidate="txtnumber" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Applianced&nbsp; Purchased :</td>
            <td>
                <asp:TextBox ID="txtapplianced" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Applianced Purchased Field Can not Be Empty" 
                    ControlToValidate="txtapplianced" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Servuce Issues :</td>
            <td>
                &nbsp;<asp:TextBox ID="txtissue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register"/>
                <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
</asp:Content>
