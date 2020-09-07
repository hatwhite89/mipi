Imports System.Data.SqlClient
Imports System.Globalization

Public Class frmConsultaNominal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Public Function RecuperarIndicador1() As String
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = " select c.cobertura from cobertura c , Indicador i 
where c.id_indicador = i.id_indicador
and c.identidad ='" + TextBox7.Text + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteScalar
        sqlcom.Connection.Close()
    End Function
    Public Function RecuperarIndicador2() As String
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "  select *
  from cobertura_infantes 
  where identidad ='2' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteScalar
        sqlcom.Connection.Close()
    End Function
    Public Function RecuperarIndicador3() As String
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "  select *
  from cobertura_infantes 
  where identidad ='" + TextBox7.Text + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteScalar
        sqlcom.Connection.Close()
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim seduc As New clsSEDUC
        Dim edad As String
        Dim edad2 As String
        Dim fecha_Actual As Date
        Dim TableDepartamento As New DataTable
        TableDepartamento.Load(seduc.RecuperarConsultaNominal(TextBox7.Text))


        Dim dr As DataRow
        For Each dr In TableDepartamento.Rows


            edad = dr("FECHANAmiCIMIENTO")


            Dim fechaConvertida As DateTime = DateTime.ParseExact(edad, "dd/MM/yyyy", CultureInfo.CurrentCulture, DateTimeStyles.None)
            Dim edad_final As Double
            edad_final = Integer.Parse((Now.Date - fechaConvertida).TotalDays.ToString) / 365
            If edad_final > 10 Then
                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox3.Text = ""
                TextBox4.Text = ""
                TextBox5.Text = ""
                TextBox6.Text = ""
                TextBox7.Text = ""
                Response.Write("<script language=javascript>alert('EDAD EXCEDE EL RANGO PERMITIDO DE CONSULTA');</script>")
            Else
                TextBox1.Text = dr("NOMBRES")
                TextBox2.Text = dr("PRIMERAPELLIDO").ToString + " " + dr("SEGUNDOAPELLIDO").ToString
                TextBox3.Text = CInt(edad_final)
                TextBox4.Text = dr("nombre_departamento")
                TextBox5.Text = dr("nombre_municipio")
                If dr("GENERO") = "2" Then
                    TextBox6.Text = "Femenino"
                Else
                    TextBox6.Text = "Masculino"
                End If
            End If


        Next
        Dim clsc As New clsConexcion

    End Sub
End Class