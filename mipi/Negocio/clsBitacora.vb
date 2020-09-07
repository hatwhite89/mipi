Imports System.Data.SqlClient

Public Class clsBitacora
    Dim usuario, accion, pagina As String

    Public Property Usuario1 As String
        Get
            Return usuario
        End Get
        Set(value As String)
            usuario = value
        End Set
    End Property

    Public Property Accion1 As String
        Get
            Return accion
        End Get
        Set(value As String)
            accion = value
        End Set
    End Property

    Public Property Pagina1 As String
        Get
            Return pagina
        End Get
        Set(value As String)
            pagina = value
        End Set
    End Property

    Public Sub AgregarBitacora()
        Dim sqlcom As SqlCommand
        Dim sqlpar As SqlParameter


        'PROCEDIMIENTO ALMACENADO
        sqlcom = New SqlCommand
        sqlcom.CommandType = CommandType.StoredProcedure
        sqlcom.CommandText = "RegistrarBitacora"

        'VARIABLES 

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "usuario"
        sqlpar.Value = Usuario1
        sqlcom.Parameters.Add(sqlpar)

        sqlpar = New SqlParameter
        sqlpar.ParameterName = "accion"
        sqlpar.Value = Accion1
        sqlcom.Parameters.Add(sqlpar)


        sqlpar = New SqlParameter
        sqlpar.ParameterName = "pagina_visito"
        sqlpar.Value = Pagina1
        sqlcom.Parameters.Add(sqlpar)



        Dim con As New clsConexcion
        sqlcom.Connection = con.getConexion
        sqlcom.ExecuteNonQuery()

        con.cerrarConexion()


    End Sub


    Public Function RecuperarBitacoras(ByVal inicio As Date, ByVal fin As Date) As SqlDataReader
        Dim sqlcom As SqlCommand
        sqlcom = New SqlCommand
        sqlcom.CommandText = "select * from bitacora where fecha_consulta between '" + inicio.ToString("yyyyMMdd") + "' and '" + fin.ToString("yyyyMMdd") + "' "
        sqlcom.Connection = New clsConexcion().getConexion
        Return sqlcom.ExecuteReader
    End Function
End Class
