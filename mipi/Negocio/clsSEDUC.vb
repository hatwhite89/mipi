Imports System.Data.SqlClient

Public Class clsSEDUC

    Public Function RecuperarConsultaNominal(ByVal numero_id As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = " select c.nombres,c.primerapellido,c.segundoapellido,c.fechanamicimiento,d.nombre_departamento,m.nombre_municipio	,c.genero
  from cobertura_infantes c, departamento d, municipio m
  where c.departamento=d.id_departamento and c.municipio=m.id_municipio_rnp and m.id_departamento=d.id_departamento and c.identidad  ='" + numero_id + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
        sqlcom.Connection.Close()
    End Function

    Public Function RecuperarIndicador1(ByVal numero_id As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = " select c.cobertura from cobertura c , Indicador i 
where c.id_indicador = i.id_indicador
and c.identidad ='" + numero_id + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
        sqlcom.Connection.Close()
    End Function

    Public Function RecuperarIndicadoresMunicipio(ByVal id_departamento As String, ByVal id_indicador As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "SELECT valor_dec,periodo_id
  FROM ft_indicadores_cobertura ft,dt_indicadores i
  where ft.indicador_id = i.indicador_id and i.indicador_id ='" + id_indicador + "'  and genero = 't' and municipio_id  ='" + id_departamento + "'
"
        sqlcom.Connection = New clsConexcion().getConexionSEDUCMatricula
        Return sqlcom.ExecuteReader
    End Function


    Public Function RecuperarIndicadoreTercerGrado(ByVal id_departamento As String, ByVal id_indicador As String, ByVal indicador As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select t.periodo,t.total from  TBMXGPB3$ t, departamento m , municipio d
  where m.nombre_departamento = t.departamento and t.municipio = d.nombre_municipio and d.id_municipio_rnp ='" + id_indicador + "' and m.id_departamento ='" + id_departamento + "' and id_indicador='" + indicador + "' order by t.periodo asc"

        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
    Public Function RecuperarIndicadoresMunicipioFemenino(ByVal id_departamento As String, ByVal id_indicador As String, ByVal indicador As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = " select periodo,resultado  from  resultado_seduc_tasa_prebasica

where id_departamento = '" + id_departamento + "' and id_municipio = '" + id_indicador + "' and id_indicador='" + indicador + "' order by periodo asc"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function



End Class
