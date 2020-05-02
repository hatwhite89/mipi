Imports System.Data.SqlClient

Public Class clsServicio
    'Variables
    Dim cod_serv, cod_cat_ser As Integer
    Dim nombre_serv, descrip As String
    Dim fecha_creacion As Date
    Dim estado As Boolean
    'Constructor
    Public Sub New()

    End Sub

    Public Property CodigoServicio As Integer
        Get
            Return cod_serv
        End Get
        Set(value As Integer)
            cod_serv = value
        End Set
    End Property

    Public Property NombreServicio As String
        Get
            Return nombre_serv
        End Get
        Set(value As String)
            nombre_serv = value
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
            Return fecha_creacion
        End Get
        Set(value As Date)
            fecha_creacion = value
        End Set
    End Property

    Public Property EstadoServicio As Boolean
        Get
            Return estado
        End Get
        Set(value As Boolean)
            estado = value
        End Set
    End Property

    Public Property CodigoCategoriaServicio As Integer
        Get
            Return cod_cat_ser
        End Get
        Set(value As Integer)
            cod_cat_ser = value
        End Set
    End Property

    Public Function AgregarServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "insertar_servicio"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_servicio"
        sqlpar.Value = NombreServicio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion_servicio"
        sqlpar.Value = Descripcion
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoServicio
        sqlcom.Parameters.Add(sqlpar)

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


    Public Function ActualizarServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_servicio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_servicio"
        sqlpar.Value = CodigoServicio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "nombre_servicio"
        sqlpar.Value = NombreServicio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "descripcion_servicio"
        sqlpar.Value = Descripcion
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_categoria_servicio"
        sqlpar.Value = CodigoCategoriaServicio
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = EstadoServicio
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
    Public Function EliminarServicio() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "eliminar_servicio"

        'VARIABLES 
        sqlpar = New SqlParameter
        sqlpar.ParameterName = "id_servicio"
        sqlpar.Value = CodigoServicio
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

    Public Function RecuperarServicios() As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from Servicio"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function

    Public Function RecuperarServiciosPorID(ByVal id_tipo_usuario As String) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select id_servicio,nombre_servicio,descripcion_servicio from Servicio s WHERE not exists (select id_servicio from Acceso  a where s.id_servicio = a.id_servicio and a.id_tipo_usuario='" + id_tipo_usuario + "')
"
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
