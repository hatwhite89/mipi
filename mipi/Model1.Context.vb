﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código se generó a partir de una plantilla.
'
'     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
'     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure
Imports System.Data.Entity.Core.Objects
Imports System.Linq

Partial Public Class mipiEntities
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=mipiEntities")
    End Sub

    Protected Overrides Sub OnModelCreating(modelBuilder As DbModelBuilder)
        Throw New UnintentionalCodeFirstException()
    End Sub


    Public Overridable Function ReporteDetpartamental(id_departamento As String) As ObjectResult(Of ReporteDetpartamental_Result)
        Dim id_departamentoParameter As ObjectParameter = If(id_departamento IsNot Nothing, New ObjectParameter("id_departamento", id_departamento), New ObjectParameter("id_departamento", GetType(String)))

        Return DirectCast(Me, IObjectContextAdapter).ObjectContext.ExecuteFunction(Of ReporteDetpartamental_Result)("ReporteDetpartamental", id_departamentoParameter)
    End Function

End Class
