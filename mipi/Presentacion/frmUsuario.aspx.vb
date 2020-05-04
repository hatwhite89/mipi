Public Class frmUsuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'llenar combobox con los servicios
        Dim clsU As New clsUsuario
        Dim ds As New DataTable

        ds.Load(clsU.RecuperarTipoUsuario)
        If IsPostBack = False Then

            DropDownList1.DataSource = ds
            DropDownList1.DataTextField = "nombre_tipo_usuario"
            DropDownList1.DataValueField = "id_tipo_usuario"
            DropDownList1.DataBind()
        End If
        'llenar combobox con los servicios
        Dim clsR As New clsRol
        Dim ds2 As New DataTable

        ds2.Load(clsR.RecuperarRoles())
        If IsPostBack = False Then

            DropDownList2.DataSource = ds2
            DropDownList2.DataTextField = "nombre_rol"
            DropDownList2.DataValueField = "id_rol"
            DropDownList2.DataBind()
        End If

        'llenar el data gried
        Dim clsU2 As New clsUsuario
        Dim TableUsuario As New DataTable
        TableUsuario.Load(clsU2.RecuperarUsuario())

        GridView1.DataSource = TableUsuario
        GridView1.DataBind()


    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click

        Dim clsU As New clsUsuario
        'actualizar usuario
        If txtCodigo.Text <> "" And txtPassword.Text <> "" Then
            With clsU
                .IdUsuario = txtCodigo.Text
                .NombreUsuario = txtNombreUsuario.Text
                .PasswordUsuario = txtPassword.Text
                .EstadoUsuario = rblEstado.SelectedValue
                .IdTipoUsuario = Integer.Parse(DropDownList1.SelectedValue)
                .Id_rol1 = Integer.Parse(DropDownList2.SelectedValue)

            End With
            If clsU.ActualizarUsuarioPassword() = "1" Then

                Response.Redirect("frmUsuario.aspx?r=1")
            End If
            Exit Sub
        ElseIf txtCodigo.Text <> "" Then
            With clsU
                .IdUsuario = txtCodigo.Text
                .NombreUsuario = txtNombreUsuario.Text
                .EstadoUsuario = rblEstado.SelectedValue
                .IdTipoUsuario = Integer.Parse(DropDownList1.SelectedValue)
                .Id_rol1 = Integer.Parse(DropDownList2.SelectedValue)
            End With
            If clsU.ActualizarUsuario() = "1" Then

                Response.Redirect("frmUsuario.aspx?r=0")
            End If
            Exit Sub


        End If
            'crear nuevo usuario
            With clsU
            .NombreUsuario = txtNombreUsuario.Text
            .PasswordUsuario = txtPassword.Text
            .EstadoUsuario = rblEstado.SelectedValue
            .IdTipoUsuario = Integer.Parse(DropDownList1.SelectedValue)
            .Id_rol1 = Integer.Parse(DropDownList2.SelectedValue)

        End With
        If clsU.AgregarUsuario = "1" Then

            Response.Redirect("frmUsuario.aspx?r=1")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        'variables
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_usuario"))
        Dim estado As Boolean = Boolean.Parse(GridView1.DataKeys(row.RowIndex).Values("estado"))
        Dim id_tipo_usuario As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_tipo_usuario"))
        Dim id_rol As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_rol"))
        Dim nombre As String = Convert.ToString(GridView1.DataKeys(row.RowIndex).Values("nombre_usuario"))
        Dim password As String = Convert.ToString(GridView1.DataKeys(row.RowIndex).Values("password_usuario"))
        txtNombreUsuario.Text = nombre
        txtCodigo.Text = id


        DropDownList1.DataTextField = "nombre_tipo_usuario"
        DropDownList1.SelectedValue = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_tipo_usuario"))

        DropDownList2.DataTextField = "nombre_rol"
        DropDownList2.SelectedValue = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_rol"))
        If estado = False Then
            rblEstado.Items.FindByText("Habilitado").Selected = False
            rblEstado.Items.FindByText("Inhabilitado").Selected = True

        ElseIf estado = True Then
            rblEstado.Items.FindByText("Inhabilitado").Selected = False
            rblEstado.Items.FindByText("Habilitado").Selected = True
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged


    End Sub

    Protected Sub DropDownList1_TextChanged(sender As Object, e As EventArgs) Handles DropDownList1.TextChanged


    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim clsU As New clsUsuario

        With clsU
            .IdUsuario = Integer.Parse(txtCodigo.Text)
        End With
        If clsU.DarBajaUsuario = "1" Then
            MsgBox("El usuario ha sido eliminado del sistema")
            Response.Redirect("frmUsuario.aspx")
        End If
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtNombreUsuario.Text = ""
        txtPassword.Text = ""
        rblEstado.Items.FindByText("Inhabilitado").Selected = False
        rblEstado.Items.FindByText("Habilitado").Selected = True

        DropDownList1.ClearSelection()

    End Sub
End Class