Imports System.Data.SqlClient

Public Class clsIndicador
    'variables
    Dim id_indicador, id_servicio As Integer
    Dim nombre_indicador, descripcion As String
    Dim fecha_creacion As Date
    Dim estado As Boolean

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdIndicador As Integer
        Get
            Return id_indicador
        End Get
        Set(value As Integer)
            id_indicador = value
        End Set
    End Property

    Public Property IdServicio As Integer
        Get
            Return id_servicio
        End Get
        Set(value As Integer)
            id_servicio = value
        End Set
    End Property

    Public Property NombreIndicador As String
        Get
            Return nombre_indicador
        End Get
        Set(value As String)
            nombre_indicador = value
        End Set
    End Property

    Public Property DescripcionIndicador As String
        Get
            Return descripcion
        End Get
        Set(value As String)
            descripcion = value
        End Set
    End Property

    Public Property FechaCreacion As Date
        Get
            Return fecha_creacion
        End Get
        Set(value As Date)
            fecha_creacion = value
        End Set
    End Property

    Public Property EstadoIndicador As Boolean
        Get
            Return estado
        End Get
        Set(value As Boolean)
            estado = value
        End Set
    End Property


    Public Function AgregarIndicador() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_indicador"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_indicador"
        sqlpar.Value = NombreIndicador
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = DescripcionIndicador
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoIndicador
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_servicio"
        sqlpar.Value = IdServicio
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

    Public Function ActualizarIndicador() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_indicador"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_indicador"
        sqlpar.Value = NombreIndicador
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_indicador"
        sqlpar.Value = IdIndicador
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = DescripcionIndicador
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoIndicador
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_servicio"
        sqlpar.Value = IdServicio
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
    Public Function RecuperarIndicadorConServicio() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select i.id_indicador,i.nombre_indicador,i.descripcion,i.estado,s.nombre_servicio,s.id_servicio from Indicador i, Servicio s where i.id_servicio = s.id_servicio "

        sqlcom.Connection = New clsConexcion().getConexion

        Return sqlcom.ExecuteReader
        sqlcom.Connection.Close()
    End Function

    Public Function RecuperarIndicador() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from indicador "

        sqlcom.Connection = New clsConexcion().getConexion

        Return sqlcom.ExecuteReader
        sqlcom.Connection.Close()
    End Function
    Public Sub EliminarIndicador()
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "delete from  desnutricion_6_24_meses_desnutricion"

        sqlcom.Connection = New clsConexcion().getConexion

        sqlcom.ExecuteReader()
        sqlcom.Connection.Close()
    End Sub
End Class
