Imports System.Data.SqlClient
Imports Microsoft.Reporting.WebForms

Public Class frmReporteDepartamental
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim clsD As New clsDepartamento

            Dim ds As New DataTable


            ds.Load(clsD.RecuperarDepartamentos())


            If IsPostBack = False Then
                DropDownListDepartamentos.DataSource = ds
                DropDownListDepartamentos.DataTextField = "nombre_departamento"
                DropDownListDepartamentos.DataValueField = "id_departamento"
                DropDownListDepartamentos.DataBind()

            End If
        Catch ex As Exception

        End Try


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim clsc As New clsConexcion
        Dim tabladep As New DataTable
        Dim da As New SqlDataAdapter("select d.nombre_departamento,x.nombre_indicador,i.porcentaje from indicadorXdepartamento i, departamento d , indicador x
where i.id_departamento = d.id_departamento and x.id_indicador = i.id_indicador and d.id_departamento ='" + DropDownListDepartamentos.SelectedValue.ToString + "'", clsc.str_con)
        da.SelectCommand.CommandType = CommandType.Text
        da.Fill(tabladep)





        Dim rds As New ReportDataSource()
        rds.Name = "DataSet1"
        rds.Value = tabladep


        ReportViewer1.LocalReport.DataSources.Clear()
        ReportViewer1.LocalReport.DataSources.Add(rds)
        ReportViewer1.LocalReport.ReportPath = "Report1.rdlc"
        ReportViewer1.LocalReport.Refresh()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("frmConsultaDepartamental.aspx")
    End Sub
End Class