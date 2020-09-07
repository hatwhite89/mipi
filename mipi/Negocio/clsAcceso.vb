Imports System.Data.SqlClient
Imports System.Reflection

Public Class clsAcceso
    'variables
    Dim id_acceso, id_tipo_usuario, id_servicio As Integer

    'Constructor
    Public Sub New()


    End Sub
    Public Sub educacionPrebasica()

    End Sub

    Public Property IdAcceso As Integer
        Get
            Return id_acceso
        End Get
        Set(value As Integer)
            id_acceso = value
        End Set
    End Property

    Public Property IdtipoUsuario As Integer
        Get
            Return id_tipo_usuario
        End Get
        Set(value As Integer)
            id_tipo_usuario = value
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

    Public Function AgregarAcceso() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_acceso"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_tipo_usuario"
        sqlpar.Value = IdtipoUsuario
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

    Public Function QuitarAcceso() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "quitar_acceso"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_acceso"
        sqlpar.Value = IdAcceso
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

    Public Function RecuperarAccesosPorID(ByVal id As Integer) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select a.id_acceso, tu.nombre_tipo_usuario,s.nombre_servicio from  Acceso a, TipoUsuario tu, Servicio s where a.id_servicio = s.id_servicio and a.id_tipo_usuario = tu.id_tipo_usuario  and a.id_tipo_usuario ='" + id.ToString + "'"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
