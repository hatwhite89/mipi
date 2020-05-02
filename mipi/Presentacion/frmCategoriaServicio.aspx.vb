Public Class frmCategoriaServicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim clsCS As New clsCategoriaServicio
        Dim TableCategoriaServicio As New DataTable
        TableCategoriaServicio.Load(clsCS.RecuperarCategoriaServicio())

        GridView1.DataSource = TableCategoriaServicio
        GridView1.DataBind()

    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsCU As New clsCategoriaServicio

        If txtCodigo.Text <> "" Then
            With clsCU
                .CodigoCategoriaServicio = Integer.Parse(txtCodigo.Text)
                .NombreCategoriaServicio = txtNombreCatServicio.Text
                .EstadoCategoriaServicio = rblEstado.SelectedValue
            End With

            If clsCU.ActualizarCategoriaServicio() = "1" Then

                Response.Redirect("frmCategoriaServicio.aspx?r=1")
            End If
            Exit Sub
        End If

        With clsCU
            .NombreCategoriaServicio = txtNombreCatServicio.Text
            .EstadoCategoriaServicio = rblEstado.SelectedValue
        End With

        If clsCU.AgregarCategoriaServicio() = "1" Then

            Response.Redirect("frmCategoriaServicio.aspx?r=0")
        Else
            MsgBox("error")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow
        'obtener valores del datagiew
        Dim id As Integer = Integer.Parse(GridView1.DataKeys(row.RowIndex).Values("id_categoria_servicio"))
        Dim nombre_categoria As String = GridView1.DataKeys(row.RowIndex).Values("nombre_categoria")
        Dim estado As Boolean = Boolean.Parse(GridView1.DataKeys(row.RowIndex).Values("estado"))

        'cargar valores

        txtCodigo.Text = id
        txtNombreCatServicio.Text = nombre_categoria

        If estado = False Then
            rblEstado.Items.FindByText("Habilitado").Selected = False
            rblEstado.Items.FindByText("Inhabilitado").Selected = True

        ElseIf estado = True Then
            rblEstado.Items.FindByText("Inhabilitado").Selected = False
            rblEstado.Items.FindByText("Habilitado").Selected = True
        End If

    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim clsCS As New clsCategoriaServicio

        With clsCS

        End With

    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtNombreCatServicio.Text = ""
        rblEstado.Items.FindByText("Inhabilitado").Selected = False
        rblEstado.Items.FindByText("Habilitado").Selected = True
    End Sub
End Class