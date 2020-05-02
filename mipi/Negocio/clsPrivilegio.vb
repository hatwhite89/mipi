Imports System.Data.SqlClient

Public Class clsPrivilegio
    'variables
    Dim id_privilegio As Integer
    Dim nombre_privilegio, descrip As String
    Dim fecha As Date

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdPrivilegio As Integer
        Get
            Return id_privilegio
        End Get
        Set(value As Integer)
            id_privilegio = value
        End Set
    End Property

    Public Property NombrePrivilegio As String
        Get
            Return nombre_privilegio
        End Get
        Set(value As String)
            nombre_privilegio = value
        End Set
    End Property

    Public Property Descripcion As String
        Get
            Return descrip
        End Get
        Set(value As String)
            descrip = value
        End Set
    End Property

    Public Property FechaCreacion As Date
        Get
            Return fecha
        End Get
        Set(value As Date)
            fecha = value
        End Set
    End Property

    Public Function AgregarPrivilegio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_privilegio"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_privilegio"
        sqlpar.Value = NombrePrivilegio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = Descripcion
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

    Public Function ActualizarPrivilegio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_privilegio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_privilegio"
        sqlpar.Value = IdPrivilegio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_privilegio"
        sqlpar.Value = NombrePrivilegio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion"
        sqlpar.Value = Descripcion
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

    Public Function EliminarPrivilegio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "eliminar_privilegio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_privilegio"
        sqlpar.Value = NombrePrivilegio
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


    Public Function RecuperarPrivilegios() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from Privilegio"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
