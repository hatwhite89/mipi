Imports System.Data.SqlClient

Public Class clsConexcion
    Private sqlcon As SqlConnection
    Public str_con As String
    Public str_con_seduc As String
    Public str_con_seduc_matricula As String
    'String Conexion
    Public Sub New()
        'str_con = "Data Source=DESKTOP-C6132IG\SQLEXPRESS ;Initial Catalog=mipi; Min Pool Size=0;Max Pool Size=1024;Pooling=true;  Integrated Security = True;"
        str_con = "Data Source=sql5041.site4now.net;Initial Catalog=DB_A624F7_mipi;User Id=DB_A624F7_mipi_admin;Password=@Tatiana1987;"
        str_con_seduc = "Data Source=190.130.17.247;Initial Catalog=SERNP;User Id=aplicaciones;Password=4pp2oi7g0bab.;"
        str_con_seduc_matricula = "Data Source=190.130.17.247;Initial Catalog=BI_SEDUC;User Id=aplicaciones;Password=4pp2oi7g0bab.;"
    End Sub

    Public Function getConexion() As SqlConnection


        sqlcon = New SqlConnection(str_con)
        ''se conecta a la base de datos
        sqlcon.Open()
        ''abre la conexión a la base de datos
        Return sqlcon
        ''retorna la conexión abierta




    End Function

    Public Function getConexionSEDUC() As SqlConnection


        sqlcon = New SqlConnection(str_con_seduc)
        ''se conecta a la base de datos
        sqlcon.Open()
        ''abre la conexión a la base de datos
        Return sqlcon
        ''retorna la conexión abierta




    End Function
    Public Function getConexionSEDUCMatricula() As SqlConnection


        sqlcon = New SqlConnection(str_con_seduc_matricula)
        ''se conecta a la base de datos
        sqlcon.Open()
        ''abre la conexión a la base de datos
        Return sqlcon
        ''retorna la conexión abierta




    End Function

    Public Sub cerrarConexion()
        'cierra la conexión con la base de datos
        sqlcon.Close()
        SqlConnection.ClearAllPools()
    End Sub
End Class
