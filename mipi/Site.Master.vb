Imports System.Data.SqlClient

Public Class SiteMaster
    Inherits MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("usuario") = "" Then
            Response.Redirect("frmLogin.aspx")
            Exit Sub
        End If
        Label1.Text = Session("usuario").ToString

    End Sub
    Public Function SystemAdmin(ByVal variable As String) As String



        Dim clsU As New clsUsuario
        Dim TablePrivilegio As New DataTable
        TablePrivilegio.Load(clsU.RecuperarAccesosUsuario(Session("cod_user").ToString, variable))
        If TablePrivilegio.Rows.Count = 0 Then

            Return "Falso"
            Exit Function
        End If

        Return "Verdadero"

    End Function
End Class