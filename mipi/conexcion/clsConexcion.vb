Imports System.Data.SqlClient

Public Class clsConexcion
    Private sqlcon As SqlConnection
    Public str_con As String
    'String Conexion
    Public Sub New()
        str_con = "Data Source=DESKTOP-9C0CHLT\SQLEXPRESS ;Initial Catalog=unicef_core; Min Pool Size=0;Max Pool Size=1024;Pooling=true;  Integrated Security = True;"
        'str_con = "Data Source=SQL5052.site4now.net;Initial Catalog=DB_A572A4_unicefmipi;User Id=DB_A572A4_unicefmipi_admin;Password=@Tatiana1987;"
    End Sub

    Public Function getConexion() As SqlConnection


        sqlcon = New SqlConnection(str_con)
            ''se conecta a la base de datos
            sqlcon.Open()
            ''abre la conexión a la base de datos
            Return sqlcon
        ''retorna la conexión abierta




    End Function

    Public Sub cerrarConexion()
        'cierra la conexión con la base de datos
        sqlcon.Close()
    End Sub
End Class
