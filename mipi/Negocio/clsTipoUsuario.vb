Imports System.Data.SqlClient

Public Class clsTipoUsuario
    'variables
    Dim id_tipo_usuario As Integer
    Dim nombre_tipo_usuario, despripcion As String
    Dim estado As Byte
    Dim fecha_creacion As Date

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdTipoUsuario As Integer
        Get
            Return id_tipo_usuario
        End Get
        Set(value As Integer)
            id_tipo_usuario = value
        End Set
    End Property

    Public Property NombreTipoUsuario As String
        Get
            Return nombre_tipo_usuario
        End Get
        Set(value As String)
            nombre_tipo_usuario = value
        End Set
    End Property

    Public Property DespripcionTipoUsuario As String
        Get
            Return despripcion
        End Get
        Set(value As String)
            despripcion = value
        End Set
    End Property

    Public Property EstadoTipoUsuario As Byte
        Get
            Return estado
        End Get
        Set(value As Byte)
            estado = value
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

    Public Function AgregarTipoUsuario() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_tipo_usuario"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_tipo_usuario"
        sqlpar.Value = NombreTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = DespripcionTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "salida"
        sqlpar.Value = ""
        sqlcom.Parameters.Add(sqlpar)

        sqlpar.Direction = ParameterDirection.Output

        Dim con As New clsConexcion
        sqlcom.Connection = con.getConexion
        sqlcom.ExecuteNonQuery()



        par_sal = sqlcom.Parameters("salida").Value

        Return par_sal
    End Function

    Public Function ActualizarTipoUsuario() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_tipo_usuario"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_tipo_usuario"
        sqlpar.Value = IdTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_tipo_usuario"
        sqlpar.Value = NombreTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = DespripcionTipoUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "salida"
        sqlpar.Value = ""
        sqlcom.Parameters.Add(sqlpar)

        sqlpar.Direction = ParameterDirection.Output

        Dim con As New clsConexcion
        sqlcom.Connection = con.getConexion
        sqlcom.ExecuteNonQuery()



        par_sal = sqlcom.Parameters("salida").Value

        Return par_sal
    End Function

    Public Function DarBajaTipoUsuario() As String
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "dar_baja_tipo_usuario"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_tipo_usuario"
        sqlpar.Value = IdTipoUsuario
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

    Public Function RecuperaTipoUsuario() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from TipoUsuario"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function


End Class
