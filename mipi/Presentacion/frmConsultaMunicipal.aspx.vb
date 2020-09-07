Imports System.Data.SqlClient
Imports System.IO
Imports ClosedXML.Excel

Public Class frmConsultaMunicipal
    Inherits System.Web.UI.Page
    Public bandera As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'llenar combobox
            Dim clsD As New clsDepartamento
            Dim clsI As New clsIndicador

            Dim ds As New DataTable
            Dim ds2 As New DataTable

            ds.Load(clsD.RecuperarDepartamentos())
            ds2.Load(clsI.RecuperarIndicador())



            If IsPostBack = False Then



                DropDownIndicador.DataSource = ds2
                DropDownIndicador.DataTextField = "nombre_indicador"
                DropDownIndicador.DataValueField = "id_indicador"
                DropDownIndicador.DataBind()
            End If




            bandera = 0


        Catch ex As Exception

        End Try
    End Sub

    Protected Sub DropDownListDepartamentos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownListDepartamentos.SelectedIndexChanged
        'CARGAR LOS MUNICPIOS QUE CORRESPONDEN AL SELECCIONAR UN DEPARTAMENTO EN ESPECIFICO
        Dim clsMs As New clsMunicipio


        Dim ds As New DataTable
        ds.Load(clsMs.RecuperarMunicipiosPorDepartamento(DropDownListDepartamentos.SelectedValue))



        DropDownList1.DataSource = ds
        DropDownList1.DataTextField = "nombre_municipio"
        DropDownList1.DataValueField = "id_municipio_rnp"
        DropDownList1.DataBind()

        Label1.Text = DropDownListDepartamentos.SelectedItem.Text
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim clsM As New clsIndicador




        'Panel1.Controls.Add(New Label With {.Text = sb.ToString})

        bandera = 1
    End Sub



    Public Function obtenerDatos() As String
        Dim clsMs As New clsMunicipio
        Dim codigo_prebasica As String

        If DropDownIndicador.SelectedValue = "2" Then
            codigo_prebasica = "TNMPB3"
        ElseIf DropDownIndicador.SelectedValue = "1" Then
            codigo_prebasica = "TEEXES5"

        End If

        Dim ds As New DataTable
        ds.Load(clsMs.RecuperarIndicadoresMunicipio(DropDownList1.SelectedValue))





        Dim srtDatos As String = "[['nombre','porcentaje'],"

        For Each item As DataRow In ds.Rows
            srtDatos = srtDatos + "["
            srtDatos = srtDatos + "'" + item(1).ToString + "'" + "," + item(0).ToString
            srtDatos = srtDatos + "],"
        Next
        srtDatos = srtDatos + "]"

        Return srtDatos
    End Function

    Public Function obtenerDatos2() As String
        Dim clsMs As New clsMunicipio


        Dim ds As New DataTable
        ds.Load(clsMs.RecuperarIndicadoresMunicipio(DropDownList1.SelectedValue))





        Dim srtDatos As String = "[['Indicador','Porcentaje'],"

        For Each item As DataRow In ds.Rows
            srtDatos = srtDatos + "["
            srtDatos = srtDatos + "'" + item(0).ToString + "'" + "," + item(1).ToString
            srtDatos = srtDatos + "],"
        Next
        srtDatos = srtDatos + "]"

        Return srtDatos
    End Function


    Public Function obtenerPorcentajesMatricula() As String
        Dim clsMs As New clsSEDUC
        Dim codigo_prebasica As String

        If DropDownIndicador.SelectedValue = "2" Then
            codigo_prebasica = "TNMPB3"
        ElseIf DropDownIndicador.SelectedValue = "1" Then
            codigo_prebasica = "TEEXES5"

        End If

        Dim ds As New DataTable
        ds.Load(clsMs.RecuperarIndicadoresMunicipio(DropDownList1.SelectedValue, codigo_prebasica))





        Dim srtDatos As String = "[['Año','Porcentaje'],"

        For Each item As DataRow In ds.Rows
            srtDatos = srtDatos + "["
            srtDatos = srtDatos + "'" + item(1).ToString + "'" + "," + item(0).ToString
            srtDatos = srtDatos + "],"
        Next
        srtDatos = srtDatos + "]"

        Return srtDatos
    End Function

    Public Function obtenerPorcentajesMatriculaGenero() As String
        Dim clsMs As New clsSEDUC

        Dim codigo_prebasica As String

        If DropDownIndicador.SelectedValue = "2" Then
            codigo_prebasica = "TNMPB3"
        ElseIf DropDownIndicador.SelectedValue = "1" Then
            codigo_prebasica = "TEEXES5"

        End If
        Dim ds As New DataTable
        Dim ds2 As New DataTable

        ds.Load(clsMs.RecuperarIndicadoresMunicipioFemenino(DropDownListDepartamentos.SelectedValue, DropDownList1.SelectedValue, DropDownIndicador.SelectedValue))


        Dim srtDatos As String = "[['Año','Porcentaje'],"

        For Each item As DataRow In ds.Rows


            srtDatos = srtDatos + "["
            srtDatos = srtDatos + "'" + item(0).ToString + "'" + "," + item(1).ToString
            srtDatos = srtDatos + "],"

        Next
        srtDatos = srtDatos + "]"

        Return srtDatos
    End Function


    Public Function obtenerPorcentajesTercerGrado() As String
        Dim clsMs As New clsSEDUC

        Dim codigo_prebasica As String

        If DropDownIndicador.SelectedValue = "2" Then
            codigo_prebasica = "TNMPB3"
        ElseIf DropDownIndicador.SelectedValue = "1" Then
            codigo_prebasica = "TEEXES5"

        End If
        Dim ds As New DataTable
        Dim ds2 As New DataTable

        ds.Load(clsMs.RecuperarIndicadoreTercerGrado(DropDownListDepartamentos.SelectedValue, DropDownList1.SelectedValue, DropDownIndicador.SelectedValue))


        Dim srtDatos As String = "[['Año','Porcentaje'],"

        For Each item As DataRow In ds.Rows


            srtDatos = srtDatos + "["
            srtDatos = srtDatos + "'" + item(0).ToString + "'" + "," + item(1).ToString
            srtDatos = srtDatos + "],"

        Next
        srtDatos = srtDatos + "]"

        Return srtDatos
    End Function
    Protected Sub ExportExcel(sender As Object, e As EventArgs)
        Dim clsC As New clsConexcion
        Dim constr As String = clsC.str_con
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("select d.nombre_municipio, x.nombre_indicador, i.porcentaje from indicadorXmunicipio i, municipio d , indicador x
where i.id_municipio = d.id_municipio and x.id_indicador= i.id_indicador")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Using wb As New XLWorkbook()
                            wb.Worksheets.Add(dt, "Indicadores_Municipio")

                            Response.Clear()
                            Response.Buffer = True
                            Response.Charset = ""
                            Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
                            Response.AddHeader("content-disposition", "attachment;filename=Indicadores_municipio.xlsx")
                            Using MyMemoryStream As New MemoryStream()
                                wb.SaveAs(MyMemoryStream)
                                MyMemoryStream.WriteTo(Response.OutputStream)
                                Response.Flush()
                                Response.End()
                            End Using
                        End Using
                    End Using
                End Using
            End Using
        End Using
    End Sub
End Class