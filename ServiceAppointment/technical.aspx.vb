Imports System.Data.OleDb

Public Class technical
    Inherits System.Web.UI.Page
    Dim bid As Integer
    Dim decision As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub onselected(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        getdata()
        Dim mycon As OleDbConnection
        Dim cmd As OleDbCommand
        Dim sqlstring As String
        mycon = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|appointmentDB.mdb;")
        mycon.Open()
        sqlstring = "INSERT INTO technical (bookingid,decision) VALUES ('" & bid & "' , '" & decision & "')"

        cmd = New OleDbCommand(sqlstring, mycon)
        cmd.ExecuteNonQuery()
        mycon.Close()
    End Sub
    Public Sub getdata()
        Dim row As GridViewRow = GridView1.SelectedRow
        TextBox1.Text = DirectCast(GridView1.SelectedRow.FindControl("Label1"), Label).Text
        TextBox2.Text = DirectCast(GridView1.SelectedRow.FindControl("DropDownList1"), DropDownList).SelectedItem.Text
        bid = CInt(TextBox1.Text)
        decision = TextBox2.Text
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        getdata()
    End Sub
End Class