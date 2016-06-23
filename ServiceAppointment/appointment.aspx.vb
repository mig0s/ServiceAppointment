Imports System.Data.OleDb
Public Class appointment
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim mycon As OleDbConnection
        Dim cmd As OleDbCommand
        Dim sqlstring As String
        Dim timeapp As Date
        Dim appname As String
        Dim sessionapp As String

        timeapp = Calendar1.SelectedDate
        appname = TextBox1.Text
        sessionapp = DropDownList1.SelectedItem.Text


        mycon = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|appointmentDB.mdb;")
        mycon.Open()
        sqlstring = "INSERT INTO booking (date_time,tech_name,time_session) VALUES ('" + timeapp + "','" + appname + "','" + sessionapp + "')"

        cmd = New OleDbCommand(sqlstring, mycon)
        cmd.ExecuteNonQuery()
        mycon.Close()
    End Sub
End Class