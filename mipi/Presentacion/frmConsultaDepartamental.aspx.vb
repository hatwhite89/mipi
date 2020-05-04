Imports System.Data.SqlClient

Public Class frmConsultaDepartamental
    Inherits System.Web.UI.Page

    Dim nombre As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'llenar combobox
            Dim clsD As New clsDepartamento
            Dim ds As New DataTable

            ds.Load(clsD.RecuperarDepartamentos())
            If IsPostBack = False Then
                DropDownListDepartamentos.DataSource = ds
                DropDownListDepartamentos.DataTextField = "nombre_departamento"
                DropDownListDepartamentos.DataValueField = "id_departamento"
                DropDownListDepartamentos.DataBind()
            End If

            'llenar combobox servicio
            Dim clsS As New clsServicio
            Dim ds1 As New DataTable

            ds1.Load(clsS.RecuperarServicios())
            If IsPostBack = False Then
                DropDownServicio.DataSource = ds1
                DropDownServicio.DataTextField = "nombre_servicio"
                DropDownServicio.DataValueField = "id_servicio"
                DropDownServicio.DataBind()

            End If
            Dim clsConectin As New clsConexcion
            Using sqlCon = New SqlConnection(clsConectin.str_con)



                Dim CmdString As String = "SELECT * from municipio"
                Dim sda As SqlDataAdapter = New SqlDataAdapter(CmdString, sqlCon)
                Dim ds2 As DataSet = New DataSet()
                sda.Fill(ds2)
                Chart1.DataSource = ds2
                Chart1.Series("Series1").XValueMember = "id_municipio"
                Chart1.Series("Series1").YValueMembers = "id_municipio"
                Chart1.DataBind()
                ' chart 2
                Chart2.DataSource = ds2
                Chart2.Series("Series1").XValueMember = "id_municipio"
                Chart2.Series("Series1").YValueMembers = "id_municipio"
                Chart2.DataBind()
                'chart3
                Chart3.DataSource = ds2
                Chart3.Series("Series1").XValueMember = "id_municipio"
                Chart3.Series("Series1").YValueMembers = "id_municipio"
                Chart3.DataBind()
                'chart4
                Chart4.DataSource = ds2
                Chart4.Series("Series1").XValueMember = "id_municipio"
                Chart4.Series("Series1").YValueMembers = "id_municipio"
                Chart4.DataBind()
            End Using
        Catch ex As Exception

        End Try


    End Sub
    Function RetornaNombre() As String
        Return "hola"
    End Function

    Protected Sub DropDownListDepartamentos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownListDepartamentos.SelectedIndexChanged
        Dim clsM As New clsMunicipio
        Label1.Text = "de " + DropDownListDepartamentos.SelectedItem.Text
        Label2.Text = "de " + DropDownListDepartamentos.SelectedItem.Text
        Label3.Text = "de " + DropDownListDepartamentos.SelectedItem.Text

        Dim sb As New StringBuilder
        sb.Append("<div class=" + "table-responsive" + ">")
        sb.Append("<table class=" + "table header-border table-hover table-custom spacing5" + ">")
        sb.Append("<thead>")
        sb.Append("<tr>")
        sb.Append("<th>#</th>")
        sb.Append("<th>Municipio</th>")
        sb.Append("<th>Porcentaje Prestaciones</th>")
        sb.Append("<th></th>")
        sb.Append("</tr>")
        sb.Append("</thead>")
        sb.Append("<tbody>")


        Dim dt As New DataTable()
        dt.Load(clsM.RecuperarMunicipiosPorDepartamento(DropDownListDepartamentos.SelectedValue.ToString))

        For Each fila As DataRow In dt.Rows
            sb.Append("<tr>")
            sb.Append("<th class=" + "w60" + ">1</th>")
            sb.Append("<td><a href=" + "index_municipio.html" + ">" + fila("nombre_municipio") + "</a></td>")
            sb.Append("<td>")
            sb.Append("<div class=" + "progress progress-xxs progress-transparent custom-color-cyan mb-0 mt-0" + ">")
            sb.Append("<div class=" + "progress-bar" + " data-transitiongoal=" + "0" + " aria-valuenow=" + "0" + "style=" + "width:   0%;" + "></div>")
            sb.Append("</div>")
            sb.Append("</td>")
            sb.Append("	<td><span class=" + "badge badge-primary" + ">0%</span>")
            sb.Append("</td>")
            sb.Append("</tr>")
        Next



        sb.Append("</tbody>")
        sb.Append("</table>")
        sb.Append("</div>")
        Panel1.Controls.Add(New Label With {.Text = sb.ToString})
    End Sub


End Class