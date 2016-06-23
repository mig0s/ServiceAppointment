Imports System.Data.OleDb
Public Class view
    Inherits System.Web.UI.Page
    Dim mycon As OleDbConnection
    Dim cmd As OleDbCommand
    Dim sqlstring As String
    Dim reader As OleDbDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        mycon = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|appointmentDB.mdb;")
        mycon.Open()
        sqlstring = "select te.technicalid,b.tech_name,b.time_session,te.bookingid,te.decision from booking as b,technical as te where b.bookingid=te.bookingid"
        cmd = New OleDbCommand(sqlstring, mycon)
        reader = cmd.ExecuteReader()

        If Not IsPostBack Then
            GridView1.DataSource = reader
            GridView1.DataBind()
        End If
        mycon.Close()
    End Sub

End Class