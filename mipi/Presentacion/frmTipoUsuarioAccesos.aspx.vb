Public Class frmTipoUsuarioAccesos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim clsTU As New clsTipoUsuario
        Dim TableTipoUsuario As New DataTable
        TableTipoUsuario.Load(clsTU.RecuperaTipoUsuario())

        GridView1.DataSource = TableTipoUsuario
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_tipo_usuario"))
        Response.Redirect("frmAcceso?id_tu=" + id.ToString)
    End Sub
End Class