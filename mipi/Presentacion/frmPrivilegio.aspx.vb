Public Class frmPrivilegio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim clsP As New clsPrivilegio
        Dim TablePrivilegio As New DataTable
        TablePrivilegio.Load(clsP.RecuperarPrivilegios())

        GridView1.DataSource = TablePrivilegio
        GridView1.DataBind()
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim clsP As New clsPrivilegio
        If txtCodigo.Text <> "" Then
            With clsP
                .NombrePrivilegio = txtNombrePrivilegio.Text
                .Descripcion = txtDescripcion.Text
                .IdPrivilegio = Integer.Parse(txtCodigo.Text)
            End With

            If clsP.ActualizarPrivilegio() = "1" Then


                Response.Redirect("frmPrivilegio.aspx?r=1")


            Else
                MsgBox("Error")
            End If

            Exit Sub
        End If
        With clsP
            .NombrePrivilegio = txtNombrePrivilegio.Text
            .Descripcion = txtDescripcion.Text

        End With
        If clsP.AgregarPrivilegio() = "1" Then

            Response.Redirect("frmPrivilegio.aspx?r=0")
        Else
            MsgBox("Error")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        'variables
        '
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_privilegio"))
        Dim descripcion As String = GridView1.DataKeys(row.RowIndex).Values("descripcion").ToString
        Dim nombre As String = Convert.ToString(GridView1.DataKeys(row.RowIndex).Values("nombre_privilegio"))

        txtCodigo.Text = id
        txtDescripcion.Text = descripcion
        txtNombrePrivilegio.Text = nombre
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtDescripcion.Text = ""
        txtNombrePrivilegio.Text = ""
    End Sub
End Class