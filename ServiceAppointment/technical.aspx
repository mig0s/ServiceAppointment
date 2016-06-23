<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="technical.aspx.vb" Inherits="ServiceAppointment.technical" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Confirmation Appointment</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bookingid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField HeaderText="bookingid" InsertVisible="False" 
                    SortExpression="bookingid">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("bookingid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="date_time" HeaderText="date_time" 
                    SortExpression="date_time" />
                <asp:BoundField DataField="tech_name" HeaderText="tech_name" 
                    SortExpression="tech_name" />
                <asp:BoundField DataField="time_session" HeaderText="time_session" 
                    SortExpression="time_session" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:TemplateField HeaderText="Confirmation">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>----Choose-----</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:appointmentDBConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:appointmentDBConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Confrim" />
    </p>
</asp:Content>
