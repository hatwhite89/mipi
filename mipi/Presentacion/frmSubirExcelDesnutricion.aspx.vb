﻿Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.IO

Public Class frmSubirExcelDesnutricion
    Inherits System.Web.UI.Page
    'Permitir conectarnos con nuestro archivo de excel'
    Public conn As OleDbConnection
    Public da As OleDbDataAdapter
    Public ds As New DataSet
    Public cnn As SqlConnection
    Public sqlBC As SqlBulkCopy

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Sub ExcelToSqlServer()


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim excelConnectionString As String = String.Empty
        Dim uploadPath As String = "~/Uploads/"
        Dim filePath As String = Server.MapPath(uploadPath + FileUpload1.PostedFile.FileName)
        Dim clsi As New clsIndicador
        Try
            clsi.EliminarIndicador()
            Dim fileExt As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
            Dim strConnection As New clsConexcion
            If fileExt = ".xls" OrElse fileExt = "XLS" Then
                excelConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source='" & filePath & "'" & "; Extended Properties ='Excel 8.0;HDR=Yes'"
            ElseIf fileExt = ".xlsx" OrElse fileExt = "XLSX" Then
                excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & filePath & ";Extended Properties=Excel 12.0;Persist Security Info=False"
            End If
            Dim excelConnection As New OleDbConnection(excelConnectionString)
            Dim cmd As New OleDbCommand("Select id_municipio,nombre_municipio,cantidad_ninios from [Hoja1$]", excelConnection)
            excelConnection.Open()
            Dim dReader As OleDbDataReader
            dReader = cmd.ExecuteReader()
            Dim sqlBulk As New SqlBulkCopy(strConnection.str_con)
            sqlBulk.DestinationTableName = "desnutricion_6_24_meses_desnutricion"
            sqlBulk.WriteToServer(dReader)

            excelConnection.Close()
            Dim script As String = "alert('Archivo subido exitosamente');"
            ScriptManager.RegisterStartupScript(Me, GetType(Page), "alerta", script, True)
        Catch ex As Exception
            Dim script As String = "alert('Error al subir archivo');"
            ScriptManager.RegisterStartupScript(Me, GetType(Page), "alerta", script, True)
        End Try


    End Sub
End Class