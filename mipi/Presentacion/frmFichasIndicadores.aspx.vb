Imports System.IO

Public Class frmFichasIndicadores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim folder As New DirectoryInfo(Server.MapPath("~/Fichas/"))
        Dim sb As New StringBuilder
        sb.Append("")
        sb.Append("")
        sb.Append("")
        sb.Append("<div class=" + Chr(34) + " container" + Chr(34) + " >")
        sb.Append("<center><h2>Fichas de indicadores</h2></center>")
        sb.Append("<p>Escriba algo en el campo de busqueda para filtrar los indicadores:</p>  ")
        sb.Append(" <input class=" + Chr(34) + "form-control" + Chr(34) + " " + "id=" + Chr(34) + "myInput" + Chr(34) + " type=" + Chr(34) + "text" + Chr(34) + " placeholder=" + "Busqueda" + ">")
        sb.Append("  <br>")
        sb.Append("<table class=" + Chr(34) + "table responsive table-bordered table-striped" + Chr(34) + ">")
        sb.Append(" <thead>")
        sb.Append("<tr>")
        sb.Append(" <th ><h3>Nombre del Indicador</h3></th>")
        sb.Append("<th><h3>Haga clic en ver ficha</h3></th>")

        sb.Append(" </tr>")
        sb.Append(" </thead>")
        sb.Append("  <tbody id=" + Chr(34) + "myTable" + Chr(34) + ">")
        For Each file As FileInfo In folder.GetFiles()

            sb.Append(" <tr>")
            sb.Append("<td>" + file.Name + "</td>")

            sb.Append("<td><a href=" + Chr(34) + "/Fichas/" + file.Name + Chr(34) + ">" + " Ver ficha" + "</a></td>")
            sb.Append("</tr>")
        Next
        sb.Append( " </tbody>
  </table>")
        Panel1.Controls.Add(New Label With {.Text = sb.ToString})
    End Sub

End Class