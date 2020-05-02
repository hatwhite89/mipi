Imports System.Data.SqlClient

Public Class clsCategoriaServicio
    'Variables
    Dim cod_cat_servicio As Integer
    Dim nombre_cat_servicio As String
    Dim fecha As Date
    Dim estado As Boolean

    'Constructor
    Public Sub New()

    End Sub

    Public Property CodigoCategoriaServicio As Integer
        Get
            Return cod_cat_servicio
        End Get
        Set(value As Integer)
            cod_cat_servicio = value
        End Set
    End Property

    Public Property NombreCategoriaServicio As String
        Get
            Return nombre_cat_servicio
        End Get
        Set(value As String)
            nombre_cat_servicio = value
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

    Public Property EstadoCategoriaServicio As Boolean
        Get
            Return estado
        End Get
        Set(value As Boolean)
            estado = value
        End Set
    End Property

    Public Function AgregarCategoriaServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_categoria_servicio"

        'VARIABLES 


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_categoria"
        sqlpar.Value = NombreCategoriaServicio
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoCategoriaServicio
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

    Public Function ActualizarCategoriaServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_categoria_servicio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_categoria_servicio"
        sqlpar.Value = CodigoCategoriaServicio
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_categoria"
        sqlpar.Value = NombreCategoriaServicio
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoCategoriaServicio
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

    Public Function EliminarCategoriaServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "eliminar_categoria_servicio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_categoria_servicio"
        sqlpar.Value = CodigoCategoriaServicio
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

    Public Function RecuperarCategoriaServicio() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from CategoriaServicio"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
