Public Class frmTema
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim clsT As New clsTema

        With clsT
            .EstadoTema = rblEstado.SelectedValue

        End With
        If clsT.ActualizarTema() = "1" Then

            Response.Redirect("frmTema.aspx?r=1")
        End If
    End Sub
End Class