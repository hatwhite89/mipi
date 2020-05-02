Public Class frmDepartamento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'llenar griwdview
        Dim clsD As New clsDepartamento
        Dim TableDepartamento As New DataTable
        TableDepartamento.Load(clsD.RecuperarDepartamentos())

        GridView1.DataSource = TableDepartamento
        GridView1.DataBind()
    End Sub

    Protected Sub txtNombreDepartamento_TextChanged(sender As Object, e As EventArgs) Handles txtNombreDepartamento.TextChanged

    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsD As New clsDepartamento
        'actualizar departamento 

        If txtCodigo.Text <> "" Then
            With clsD
                .IdDetartamento = Integer.Parse(txtCodigo.Text)
                .NombreDepartamento = txtNombreDepartamento.Text
                .IdExterno = Integer.Parse(txtIdExterno.Text)
            End With
            If clsD.AgregarDepartamento() = "1" Then

                Response.Redirect("frmDepartamento.aspx?r=1")
            End If

            Exit Sub
        End If
        'registrar un nuevo departamento 
        With clsD
            If txtIdExterno.Text = "" Then
                txtIdExterno.Text = "0"
            End If
            .NombreDepartamento = txtNombreDepartamento.Text
            .IdExterno = Integer.Parse(txtIdExterno.Text)
        End With
        If clsD.AgregarDepartamento() = "1" Then

            Response.Redirect("frmDepartamento.aspx?r=0")
        End If

    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = ""
        txtIdExterno.Text = ""
        txtNombreDepartamento.Text = ""

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        'variables 
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_departamento"))
        Dim id_externo As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_departamento_externo"))
        Dim nombre As String = GridView1.DataKeys(row.RowIndex).Values("nombre_departamento")

        txtCodigo.Text = id
        txtIdExterno.Text = id_externo
        txtNombreDepartamento.Text = nombre


    End Sub
End Class