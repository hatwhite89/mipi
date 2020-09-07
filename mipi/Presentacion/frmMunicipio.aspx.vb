Public Class frmMunicipio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        llenarMunicipio()

        'llenar combobox
        Dim clsD As New clsDepartamento
        Dim ds As New DataTable

        ds.Load(clsD.RecuperarDepartamentos())
        If IsPostBack = False Then


            DropDownList1.DataSource = ds
            DropDownList1.DataTextField = "nombre_departamento"
            DropDownList1.DataValueField = "id_departamento"
            DropDownList1.DataBind()

        End If
    End Sub
    Public Sub llenarMunicipio()
        'llenar griwdview
        Dim clsM As New clsMunicipio
        Dim TableMunicipio As New DataTable
        TableMunicipio.Load(clsM.RecuperarMunicipios())

        GridView1.DataSource = TableMunicipio
        GridView1.DataBind()
    End Sub
    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        'actualizar municipio
        Dim clsM As New clsMunicipio
        If txtCodigo.Text <> "" Then
            With clsM
                .NombreMunicipio = txtNombreMunicpio.Text
                .IdExterno = txtIdExterno.Text
                .IdDepartamento = DropDownList1.SelectedValue
                .IdMunicipio = Integer.Parse(txtCodigo.Text)
            End With

            If clsM.AgregarMunicipio() = "1" Then

                Response.Redirect("frmMunicipio.aspx?r=1")
            End If
            Exit Sub
        End If
        'registrar un nuevo municipio
        With clsM
            If txtIdExterno.Text = "" Then
                txtIdExterno.Text = "0"
            End If
            .NombreMunicipio = txtNombreMunicpio.Text
            .IdExterno = txtIdExterno.Text
            .IdDepartamento = DropDownList1.SelectedValue

        End With

        If clsM.AgregarMunicipio() = "1" Then

            Response.Redirect("frmMunicipio.aspx?r=0")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        '
        ' Se obtiene la fila seleccionada del gridview
        '
        Dim row As GridViewRow = GridView1.SelectedRow

        'variables 
        Dim id As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_municipio"))
        Dim nombre As String = GridView1.DataKeys(row.RowIndex).Values("nombre_municipio")
        Dim id_externo As String = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_municipio_externo"))


        txtCodigo.Text = id
        txtIdExterno.Text = id_externo
        txtNombreMunicpio.Text = nombre

        DropDownList1.DataTextField = "nombre_departamento"
        DropDownList1.SelectedValue = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_departamento"))

    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        'nuevo municupiop
        txtCodigo.Text = ""
        txtIdExterno.Text = ""
        txtNombreMunicpio.Text = ""
        DropDownList1.ClearSelection()
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        llenarMunicipio()
    End Sub
End Class