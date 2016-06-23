Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
    End Sub

    Protected Sub LoginUser_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles LoginUser.Authenticate
        If (Roles.IsUserInRole(LoginUser.UserName, "Customer")) Then
            Response.Redirect("~/appointment.aspx")
        ElseIf (Roles.IsUserInRole(LoginUser.UserName, "Staff")) Then
            Response.Redirect("~/technical.aspx")
        Else

            MsgBox("Invalid User")
        End If

    End Sub
End Class