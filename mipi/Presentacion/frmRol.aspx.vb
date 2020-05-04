Public Class frmRol
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'llenar griwdview
        Dim clsS As New clsRol
        Dim TableServicio As New DataTable
        TableServicio.Load(clsS.RecuperarRoles())

        GridView1.DataSource = TableServicio
        GridView1.DataBind()
    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsR As New clsRol
        If txtCodigo.Text = "" Then
            With clsR

                .NombreRol = txtNombreRol.Text
                .DescripcionRol = txtDescripcion.Text


            End With
            If clsR.AgregarRol() = "1" Then

                Response.Redirect("frmRol.aspx?r=0")
            End If
            Exit Sub

        ElseIf txtCodigo.Text <> "" Then
            With clsR
                .IdRol = Integer.Parse(txtCodigo.Text)
                .NombreRol = txtNombreRol.Text
                .DescripcionRol = txtDescripcion.Text


            End With

            If clsR.ActualizarRol() = "1" Then
                Response.Redirect("frmRol.aspx?r=1")
            End If
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        'variables 
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_rol"))
        Dim nombre As String = GridView1.DataKeys(row.RowIndex).Values("nombre_rol")
        Dim descrip As String = GridView1.DataKeys(row.RowIndex).Values("descripcion")

        txtCodigo.Text = id
        txtNombreRol.Text = nombre
        txtDescripcion.Text = descrip
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtDescripcion.Text = ""
        txtNombreRol.Text = ""
    End Sub
End Class