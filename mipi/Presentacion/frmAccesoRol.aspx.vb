Public Class frmAccesoRol
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'llenar griwdview
        Dim clsS As New clsAccesoRol
        Dim TableServicio As New DataTable
        TableServicio.Load(clsS.RecuperarAccesosRoles())

        GridView1.DataSource = TableServicio
        GridView1.DataBind()

        'llenar combobox
        Dim clsD As New clsRol
        Dim ds As New DataTable

        ds.Load(clsD.RecuperarRoles())
        If IsPostBack = False Then


            DropDownList1.DataSource = ds
            DropDownList1.DataTextField = "nombre_rol"
            DropDownList1.DataValueField = "id_rol"
            DropDownList1.DataBind()

        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim clsA As New clsAccesoRol
        Dim row As GridViewRow = GridView1.SelectedRow

        Dim id_acceso As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Values("id_acceso_rol"))

        With clsA
            .IdAcceso = id_acceso
        End With
        If clsA.QuitarAccesoRol() = "1" Then
            Response.Redirect("frmAccesoRol.aspx")
        End If
    End Sub

    Protected Sub b1_Click(sender As Object, e As EventArgs) Handles b1.Click
        Dim clsA As New clsAccesoRol

        With clsA
            .IdRol = DropDownList1.SelectedValue
            .NombreVariable = listadoSecciones.SelectedValue
        End With
        If clsA.AgregarAccesoRol() = "1" Then
            Response.Redirect("frmAccesoRol.aspx")
        End If
    End Sub
End Class