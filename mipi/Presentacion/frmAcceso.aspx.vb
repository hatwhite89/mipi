Public Class frmAcceso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim in_id_tipo_usuario = Request.QueryString("id_tu")
        'llena el grid con los servicios
        Dim clsServ As New clsServicio
        Dim TableServicio As New DataTable
        TableServicio.Load(clsServ.RecuperarServiciosPorID(in_id_tipo_usuario))

        GridView1.DataSource = TableServicio
        GridView1.DataBind()

        'llena el grid con los accesos
        Dim clsA As New clsAcceso
        Dim TableAcceso As New DataTable
        TableAcceso.Load(clsA.RecuperarAccesosPorID(in_id_tipo_usuario))

        GridView2.DataSource = TableAcceso
        GridView2.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim clsA As New clsAcceso
        Dim in_id_tipo_usuario = Request.QueryString("id_tu")
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow
        Dim id_tipo As Integer = in_id_tipo_usuario
        Dim id_serv As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_servicio"))

        With clsA
            .IdtipoUsuario = id_tipo
            .IdServicio = id_serv
        End With

        If clsA.AgregarAcceso = "1" Then
            Response.Redirect("frmAcceso?id_tu=" + in_id_tipo_usuario.ToString)
        End If
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        Dim in_id_tipo_usuario = Request.QueryString("id_tu")
        Dim clsA As New clsAcceso
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView2.SelectedRow

        Dim id_acceso As Integer = Convert.ToInt32(GridView2.DataKeys(row.RowIndex).Values("id_acceso"))

        With clsA
            .IdAcceso = id_acceso

        End With

        If clsA.QuitarAcceso() = "1" Then
            Response.Redirect("frmAcceso?id_tu=" + in_id_tipo_usuario.ToString)
        End If
    End Sub
End Class