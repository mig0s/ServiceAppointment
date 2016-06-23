Imports System.Data.OleDb
Public Class Signupmemeber

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim mycon As OleDbConnection
        Dim cmd As OleDbCommand
        Dim sqlstring, name, add, contact, purchase, issue As String
        name = txtname.Text
        add = txtaddress.Text
        contact = txtnumber.Text
        purchase = txtapplianced.Text
        issue = txtissue.Text
        mycon = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Rinnaidatabase.mdb;")
        mycon.Open()
        sqlstring = "INSERT INTO Customer (Cust_Name,Cust_Add,Cust_Contact,Appliance_Purchased,Service_Issues) VALUES ('" + name + "','" + add + "','" + contact + "','" + purchase + "','" + issue + "')"
        cmd = New OleDbCommand(sqlstring, mycon)
        cmd.ExecuteNonQuery()
        mycon.Close()




        Response.Redirect("~/Welcome.aspx")



    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        txtname.Text = ""
        txtaddress.Text = ""
        txtnumber.Text = ""
        txtapplianced.Text = ""
        txtissue.Text = ""
    End Sub
End Class