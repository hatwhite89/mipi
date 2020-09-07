Imports System.IO

Public Class frmSubirFichasIndicador
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim folder As New DirectoryInfo(Server.MapPath("~/Fichas/"))
        Dim sb As New StringBuilder
        For Each file As FileInfo In folder.GetFiles()

            sb.Append(" ")
            sb.Append("<p>" + file.Name + "</p>")
            sb.Append("<a href=" + Chr(34) + "frmSubirFichasIndicador.aspx?eliminar=" + folder.ToString + file.Name + Chr(34) + ">" + "Eliminar" + "</a>")
        Next
        Panel1.Controls.Add(New Label With {.Text = sb.ToString})
        Dim bandera As String = Request.QueryString("eliminar")
        If bandera <> "" Then
            Eliminar(bandera)
            Response.Redirect("frmSubirFichasIndicador.aspx")
        End If
    End Sub

    Protected Sub UploadButton_Click(sender As Object, e As EventArgs) Handles UploadButton.Click
        If (FileUploadControl.HasFile) Then

            Try
                Dim filename = Path.GetFileName(FileUploadControl.FileName)
                FileUploadControl.SaveAs(Server.MapPath("~/Fichas/") + filename)


                Response.Redirect("frmSubirFichasIndicador.aspx")
            Catch ex As Exception



            End Try



        End If


    End Sub
    Public Sub Eliminar(ByVal ruta)
        System.IO.File.Delete(ruta)
    End Sub
End Class