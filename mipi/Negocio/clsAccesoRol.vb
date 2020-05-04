Imports System.Data.SqlClient

Public Class clsAccesoRol
    Dim id, id_rol As Integer
    Dim nombre_variable As String

    Public Property IdAcceso As Integer
        Get
            Return id
        End Get
        Set(value As Integer)
            id = value
        End Set
    End Property

    Public Property IdRol As Integer
        Get
            Return id_rol
        End Get
        Set(value As Integer)
            id_rol = value
        End Set
    End Property

    Public Property NombreVariable As String
        Get
            Return nombre_variable
        End Get
        Set(value As String)
            nombre_variable = value
        End Set
    End Property

    Public Function AgregarAccesoRol() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_acceso_rol"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_variable"
        sqlpar.Value = NombreVariable
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_rol"
        sqlpar.Value = IdRol
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

    Public Function QuitarAccesoRol() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "quitar_acceso_rol"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_acceso_rol"
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


    Public Function RecuperarAccesosRoles() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select *  from AccesoRol "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
