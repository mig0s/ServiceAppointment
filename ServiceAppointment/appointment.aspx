<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="appointment.aspx.vb" Inherits="ServiceAppointment.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h2>Booking Appointment </h2>
       
    </p>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Select Date:</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Enter Technician Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Select Time Session</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Morning 8-11</asp:ListItem>
                        <asp:ListItem>Afternoon 1-5</asp:ListItem>
                        <asp:ListItem>Evening 6-10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" 
                        
                        onclientclick="return alert('Sucessfully submited booking And Check  on the next day');" 
                        Text="Submit" />
                </td>
            </tr>
        </table>
    
</asp:Content>
