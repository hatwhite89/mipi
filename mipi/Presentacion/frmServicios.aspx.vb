Public Class frmServicios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'llenar griwdview
        Dim clsS As New clsServicio
        Dim TableServicio As New DataTable
        TableServicio.Load(clsS.RecuperarServicios())

        GridView1.DataSource = TableServicio
        GridView1.DataBind()

        'llenar combobox
        Dim clsCS As New clsCategoriaServicio
        Dim ds As New DataTable

        ds.Load(clsCS.RecuperarCategoriaServicio())
        If IsPostBack = False Then
            DropDownList1.DataSource = ds
            DropDownList1.DataTextField = "nombre_categoria"
            DropDownList1.DataValueField = "id_categoria_servicio"
            DropDownList1.DataBind()
        End If
    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsServ As New clsServicio
        If txtCodigo.Text <> "" Then
            With clsServ
                .CodigoServicio = Integer.Parse(txtCodigo.Text)
                .NombreServicio = txtNombreServicio.Text
                .Descripcion = txtDescripcion.Text
                .EstadoServicio = rblEstado.SelectedValue
                .CodigoCategoriaServicio = Integer.Parse(DropDownList1.SelectedValue)

            End With
            If clsServ.ActualizarServicio() = "1" Then
                Response.Redirect("frmServicios.aspx?r=1")


            Else
                MsgBox("Error")
            End If
           Response.Redirect("frmServicios.aspx?r=0")
            Exit Sub
        End If
        With clsServ
            .NombreServicio = txtNombreServicio.Text
            .Descripcion = txtDescripcion.Text
            .EstadoServicio = rblEstado.SelectedValue
            .CodigoCategoriaServicio = Integer.Parse(DropDownList1.SelectedValue)

        End With

        If clsServ.AgregarServicio() = "1" Then
            Response.Redirect("frmServicios.aspx?r=0")
        Else
            MsgBox("Error")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow
        Dim value As String = Request.QueryString("r")

        'variables 
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_servicio"))
        Dim estado As Boolean = Boolean.Parse(GridView1.DataKeys(row.RowIndex).Values("estado"))
        Dim nombre As String = GridView1.DataKeys(row.RowIndex).Values("nombre_servicio")
        Dim descripcion As String = GridView1.DataKeys(row.RowIndex).Values("descripcion_servicio")

        txtCodigo.Text = id
        txtDescripcion.Text = descripcion
        txtNombreServicio.Text = nombre

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
        txtNombreServicio.Text = ""
        DropDownList1.ClearSelection()

        rblEstado.Items.FindByText("Inhabilitado").Selected = False
        rblEstado.Items.FindByText("Habilitado").Selected = True
    End Sub
End Class