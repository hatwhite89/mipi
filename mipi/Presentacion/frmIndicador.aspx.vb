Public Class frmIndicador
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'llenar el combobox con los servicios
        Dim clsServ As New clsServicio
        Dim ds As New DataTable

        ds.Load(clsServ.RecuperarServicios())
        If IsPostBack = False Then

            DropDownList1.DataSource = ds
            DropDownList1.DataTextField = "nombre_servicio"
            DropDownList1.DataValueField = "id_servicio"
            DropDownList1.DataBind()
        End If
        'llenar el datagried con los indicadores
        Dim clsI As New clsIndicador
        Dim TableIndicador As New DataTable
        TableIndicador.Load(clsI.RecuperarIndicadorConServicio())

        GridView1.DataSource = TableIndicador
        GridView1.DataBind()
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim clsI As New clsIndicador
        'actualizar indicadores
        If txtCodigo.Text <> "" Then
            With clsI
                .IdIndicador = txtCodigo.Text
                .NombreIndicador = txtNombreIndicador.Text
                .DescripcionIndicador = txtDescripcion.Text
                .EstadoIndicador = rblEstado.SelectedValue
                .IdServicio = DropDownList1.SelectedValue
            End With
            If clsI.ActualizarIndicador() = "1" Then

                Response.Redirect("frmIndicador.aspx?r=1")

                Exit Sub
            End If
        End If
        'agregar nuevo indicador
        With clsI
            .NombreIndicador = txtNombreIndicador.Text
            .DescripcionIndicador = txtDescripcion.Text
            .EstadoIndicador = rblEstado.SelectedValue
            .IdServicio = DropDownList1.SelectedValue
        End With
        If clsI.AgregarIndicador() = "1" Then

            Response.Redirect("frmIndicador.aspx?r=0")
        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_indicador"))
        Dim estado As Boolean = Boolean.Parse(GridView1.DataKeys(row.RowIndex).Values("estado"))
        Dim descripcion As String = GridView1.DataKeys(row.RowIndex).Values("descripcion").ToString
        Dim nombre As String = Convert.ToString(GridView1.DataKeys(row.RowIndex).Values("nombre_indicador"))

        txtCodigo.Text = id
        txtDescripcion.Text = descripcion
        txtNombreIndicador.Text = nombre
        DropDownList1.DataTextField = "nombre_servicio"
        DropDownList1.SelectedValue = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_servicio"))

        If estado = False Then
            rblEstado.Items.FindByText("Habilitado").Selected = False
            rblEstado.Items.FindByText("Inhabilitado").Selected = True

        ElseIf estado = True Then
            rblEstado.Items.FindByText("Inhabilitado").Selected = False
            rblEstado.Items.FindByText("Habilitado").Selected = True
        End If

    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtDescripcion.Text = ""
        txtNombreIndicador.Text = ""
        rblEstado.Items.FindByText("Inhabilitado").Selected = False
        rblEstado.Items.FindByText("Habilitado").Selected = True
        DropDownList1.ClearSelection()

    End Sub
End Class