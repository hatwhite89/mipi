Imports System.Data.SqlClient

Public Class clsMunicipio
    'variables
    Dim id_municipio, id_externo, id_departamento As Integer
    Dim nombre_municipio As String

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdMunicipio As Integer
        Get
            Return id_municipio
        End Get
        Set(value As Integer)
            id_municipio = value
        End Set
    End Property

    Public Property IdExterno As Integer
        Get
            Return id_externo
        End Get
        Set(value As Integer)
            id_externo = value
        End Set
    End Property

    Public Property IdDepartamento As Integer
        Get
            Return id_departamento
        End Get
        Set(value As Integer)
            id_departamento = value
        End Set
    End Property

    Public Property NombreMunicipio As String
        Get
            Return nombre_municipio
        End Get
        Set(value As String)
            nombre_municipio = value
        End Set
    End Property

    Public Function AgregarMunicipio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_municipio"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_municipio"
        sqlpar.Value = NombreMunicipio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_departamento"
        sqlpar.Value = IdDepartamento
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_municipio_externo"
        sqlpar.Value = IdExterno
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "salida"
        sqlpar.Value = ""
        sqlcom.Parameters.Add(sqlpar)

        sqlpar.Direction = ParameterDirection.Output

        Dim con As New clsConexcion
        sqlcom.Connection = con.getConexion
        sqlcom.ExecuteNonQuery()

        con.cerrarConexion()

        par_sal = sqlcom.Parameters("salida").Value

        Return par_sal
    End Function
    Public Function ActualizarMunicipio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_municipio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_municipio"
        sqlpar.Value = IdMunicipio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_departamento"
        sqlpar.Value = IdDepartamento
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_municipio"
        sqlpar.Value = NombreMunicipio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_municipio_externo"
        sqlpar.Value = IdExterno
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "salida"
        sqlpar.Value = ""
        sqlcom.Parameters.Add(sqlpar)

        sqlpar.Direction = ParameterDirection.Output

        Dim con As New clsConexcion
        sqlcom.Connection = con.getConexion
        sqlcom.ExecuteNonQuery()

        con.cerrarConexion()

        par_sal = sqlcom.Parameters("salida").Value

        Return par_sal
    End Function

    Public Function RecuperarMunicipios() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select m.id_municipio,m.id_municipio_externo,m.nombre_municipio,d.id_departamento,d.nombre_departamento from municipio m, Departamento d where m.id_departamento=d.id_departamento"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarMunicipiosPorDepartamento(ByVal id As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from municipio where id_departamento = '" + id + "'"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarMunicipios2(ByVal id_departamento As String, ByVal id_indicador As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select m.nombre_municipio,x.porcentaje from indicadorXmunicipio x, Departamento d,municipio m
where x.id_municipio = m.id_municipio and m.id_departamento =d.id_departamento  and d.id_departamento ='" + id_departamento + "' and x.id_indicador ='" + id_indicador + "'
"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarIndicadoresMunicipio(ByVal id_departamento As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select i.nombre_indicador,x.porcentable from municipioXindicador x, municipio m,Indicador i
where x.id_municipio = m.id_municipio and i.id_indicador=x.id_indicador and x.id_municipio ='" + id_departamento + "'
"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

End Class
