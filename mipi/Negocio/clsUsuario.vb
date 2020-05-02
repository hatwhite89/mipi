Imports System.Data.SqlClient

Public Class clsUsuario
    'variables
    Dim id_usuario, id_tipo_usuario As Integer
    Dim nombre_usuario, password As String
    Dim fecha_creacion As Date
    Dim estado As Byte

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

    Public Property IdUsuario As Integer
        Get
            Return id_usuario
        End Get
        Set(value As Integer)
            id_usuario = value
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

    Public Property NombreUsuario As String
        Get
            Return nombre_usuario
        End Get
        Set(value As String)
            nombre_usuario = value
        End Set
    End Property

    Public Property PasswordUsuario As String
        Get
            Return password
        End Get
        Set(value As String)
            password = value
        End Set
    End Property

    Public Property EstadoUsuario As Byte
        Get
            Return estado
        End Get
        Set(value As Byte)
            estado = value
        End Set
    End Property

    Public Function AgregarUsuario() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_usuario"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_usuario"
        sqlpar.Value = NombreUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "password_usuario"
        sqlpar.Value = PasswordUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoUsuario
        sqlcom.Parameters.Add(sqlpar)


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

    Public Function ActualizarUsuario() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_usuario"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_usuario"
        sqlpar.Value = IdUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_usuario"
        sqlpar.Value = NombreUsuario
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoUsuario
        sqlcom.Parameters.Add(sqlpar)



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

    Public Function DarBajaUsuario() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "dar_baja_usuario"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_usuario"
        sqlpar.Value = IdUsuario
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

    Public Function RecuperarTipoUsuario() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select id_tipo_usuario, nombre_tipo_usuario from TipoUsuario"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarUsuario() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select u.id_usuario,u.nombre_usuario,CAST(DECRYPTBYPASSPHRASE('unicef2020', u.password_usuario)AS VARCHAR(MAX)) as password_usuario,u.estado,u.fecha_creacion,u.id_tipo_usuario,t.nombre_tipo_usuario from Usuario u, TipoUsuario t
where u.id_tipo_usuario = t.id_tipo_usuario"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function


    Public Function Login() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "login"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "username"
        sqlpar.Value = NombreUsuario
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "password"
        sqlpar.Value = PasswordUsuario
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


    Public Function ActualizarUsuarioPassword() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_usuario_password"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_usuario"
        sqlpar.Value = IdUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_usuario"
        sqlpar.Value = NombreUsuario
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "password_usuario"
        sqlpar.Value = PasswordUsuario
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoUsuario
        sqlcom.Parameters.Add(sqlpar)



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
End Class
