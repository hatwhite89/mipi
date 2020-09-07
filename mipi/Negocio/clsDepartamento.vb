Imports System.Data.SqlClient

Public Class clsDepartamento
    'variables
    Dim id_detartamento, id_externo As Integer
    Dim nombre_departamento As String

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdDetartamento As Integer
        Get
            Return id_detartamento
        End Get
        Set(value As Integer)
            id_detartamento = value
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

    Public Property NombreDepartamento As String
        Get
            Return nombre_departamento
        End Get
        Set(value As String)
            nombre_departamento = value
        End Set
    End Property

    Public Function AgregarDepartamento() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_departamento"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_departamento"
        sqlpar.Value = NombreDepartamento
        sqlcom.Parameters.Add(sqlpar)




        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_departamento_externo"
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

    Public Function ActualizarDepartamento() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_departamento"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_departamento"
        sqlpar.Value = IdDetartamento
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_departamento"
        sqlpar.Value = NombreDepartamento
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_departamento_externo"
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

    Public Function RecuperarDepartamentos() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from Departamento"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarDepartamentoGrafico(ByVal id_departamento As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select i.nombre_indicador,x.porcentaje from indicadorXdepartamento x, Indicador i
where i.id_indicador=x.id_indicador and x.id_departamento = '" + id_departamento + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
        sqlcom.Connection.Close()
    End Function

    Public Function RecuperarRNP(ByVal id_departamento As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from  porcentajeEdadDepartamento  where id_departamento ='" + id_departamento + "'"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function


End Class
