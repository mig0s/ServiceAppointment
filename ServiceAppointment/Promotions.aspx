<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Promotions.aspx.vb" Inherits="ServiceAppointment.Promotions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 425px;
        }
        .style2
        {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large; color: #000000; font-weight: bold; font-style: normal">
    <!-- Default panel contents -->
      <div class="panel-heading">Available Promotions</div>
      <div class="panel-body">
        <p>Here you will find all the technical information relating to air conditioner system and design. More information on aircon installation legistration and energy consumption can also be obtained through the links listed below.</p>
      </div>

      <!-- Table -->
      <table class="table">
        <tbody>
            <tr>
                <th>Model Name</th>
                <th>Picture</th>
                <th>Price</th>
                <th>Documents</th>
            </tr>
            <tr>
                <td>EuropAce<br />EAC 392</td>
                <td><img src="http://www.coolserve.com.sg/imgs/products/EuropAce_Casement_2065S.jpeg" /></td>
                <td><s>$860.00</s><br /><b>$699.00</b></td>
                <td><a href="/Content/EuropeAce.pdf">Download</a></td>
            </tr>
            <tr>
                <td>EuropAce<br />EPAC 12J</td>
                <td><img src="http://www.coolserve.com.sg/imgs/products/EuropAce_Portable%20Air%20Con_2639S.jpeg" /></td>
                <td><s>$999.00</s><br /><b>$799.00</b></td>
                <td><a href="/Content/EPAC12J.pdf">Download</a></td>
            </tr>
            <tr>
                <td>Daikin<br />RKS25GVMG / FTKS25DVM</td>
                <td><img src="http://www.coolserve.com.sg/imgs/products/Daikin_Wall%20Mounted_2510S.jpeg" /></td>
                <td><s>$1,080.00</s><br /><b>$899.00</b></td>
                <td><a href="/Content/DaikinPCRSG0716.pdf">Download</a></td>
            </tr>            
        </tbody>
      </table>
    </div>
</asp:Content>

