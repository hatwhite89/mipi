Public Class frmLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim formname As String = Me.[GetType]().Name
        Dim path As String = HttpContext.Current.Request.Url.AbsolutePath

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim clsU As New clsUsuario

        With clsU
            .NombreUsuario = txtNombreUsuario.Text
            .PasswordUsuario = txtPassword.Text
        End With
        If clsU.Login() = "1" Then
            Response.Redirect("Default.aspx")
        Else
            Response.Redirect("frmLogin.aspx?r=1")

        End If
    End Sub
End Class