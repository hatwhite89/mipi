Imports System.Data.SqlClient

Public Class clsTema
    'variables
    Dim id_tema As Integer
    Dim estado As Boolean

    'Constructor
    Public Sub New()

    End Sub

    Public Property EstadoTema As Boolean
        Get
            Return estado
        End Get
        Set(value As Boolean)
            estado = value
        End Set
    End Property

    Public Function ActualizarTema() As Integer
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter
        Dim par_sal As Integer

        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "actualizar_tema"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "estado"
        sqlpar.Value = estado
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

    Public Function RecuperarTema() As Boolean
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select estado from Tema "

        sqlcom.Connection = New clsConexcion().getConexion
        Return Boolean.Parse(sqlcom.ExecuteScalar)
    End Function
End Class
