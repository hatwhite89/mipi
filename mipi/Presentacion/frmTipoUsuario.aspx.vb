Imports System.Data.SqlClient

Public Class frmTipoUsuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cls As New clsTipoUsuario
        Dim TableTipoUsuario As New DataTable
        TableTipoUsuario.Load(TipoUsuarioTabla())

        GridView1.DataSource = TableTipoUsuario
        GridView1.DataBind()


    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsTU As New clsTipoUsuario

        If txtCodigo.Text <> "" Then
            With clsTU
                .IdTipoUsuario = Integer.Parse(txtCodigo.Text)
                .NombreTipoUsuario = txtNombreTipoUsuario.Text
                .DespripcionTipoUsuario = txtDescripcion.Text
                .EstadoTipoUsuario = rblEstado.SelectedValue
            End With
            If clsTU.ActualizarTipoUsuario = "1" Then

                Response.Redirect("frmTipoUsuario.aspx?r=1")
            End If
            Exit Sub
        End If

        With clsTU
            .NombreTipoUsuario = txtNombreTipoUsuario.Text
            .DespripcionTipoUsuario = txtDescripcion.Text

        End With

        If clsTU.AgregarTipoUsuario() = "1" Then

            Response.Redirect("frmTipoUsuario.aspx?r=0")
        Else

            Response.Redirect("frmTipoUsuario.aspx?r=4")
        End If

    End Sub
    Public Function RecuperaTipoUsuario() As List(Of String)
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from TipoUsuario"
        sqlcom.Connection = New clsConexcion().getConexion
        Dim dr As SqlDataReader
        dr = sqlcom.ExecuteReader
        Dim Lista As New List(Of String)

        While dr.Read

            Lista.Add((dr(0)))
            Lista.Add((dr(1)))
            Lista.Add((dr(2)))
        End While
        Return Lista
    End Function

    Public Function TipoUsuarioTabla() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from TipoUsuario"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        '
        ' Obtengo el id y el nombre  de la entidad que se esta editando
        ' en este caso de la entidad Person
        '
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_tipo_usuario"))
        Dim estado As Boolean = Boolean.Parse(GridView1.DataKeys(row.RowIndex).Values("estado"))
        Dim descripcion As String = GridView1.DataKeys(row.RowIndex).Values("descripcion").ToString
        Dim nombre As String = Convert.ToString(GridView1.DataKeys(row.RowIndex).Values("nombre_tipo_usuario"))

        txtCodigo.Text = id
        txtDescripcion.Text = descripcion
        txtNombreTipoUsuario.Text = nombre

        If estado = False Then
            rblEstado.Items.FindByText("Habilitado").Selected = False
            rblEstado.Items.FindByText("Inhabilitado").Selected = True

        ElseIf estado = True Then
            rblEstado.Items.FindByText("Inhabilitado").Selected = False
            rblEstado.Items.FindByText("Habilitado").Selected = True
        End If






    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "Select" Then
            '
            ' Se obtiene indice de la row seleccionada
            '
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)

            '
            ' Obtengo el id de la entidad que se esta editando
            ' en este caso de la entidad Person
            '

            Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(index).Value)

        End If
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtDescripcion.Text = ""
        txtNombreTipoUsuario.Text = ""
        rblEstado.Items.FindByText("Inhabilitado").Selected = False
        rblEstado.Items.FindByText("Habilitado").Selected = True
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim clsTU As New clsTipoUsuario

        With clsTU
            .IdTipoUsuario = Integer.Parse(txtCodigo.Text)
        End With
        If clsTU.DarBajaTipoUsuario = 1 Then
            MsgBox("Se ha eliminado correctamente el tipo de  usuario del sistema")
        End If
    End Sub
End Class