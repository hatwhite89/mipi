Public Class clsPathForm
    'variables 
    Dim id_path As Integer
    Dim path, descripcion, nombre_form As String
    'Constructor
    Public Sub New()

    End Sub

    Public Property IdPath As Integer
        Get
            Return id_path
        End Get
        Set(value As Integer)
            id_path = value
        End Set
    End Property

    Public Property PathURL As String
        Get
            Return path
        End Get
        Set(value As String)
            path = value
        End Set
    End Property

    Public Property DescripcionPath As String
        Get
            Return descripcion
        End Get
        Set(value As String)
            descripcion = value
        End Set
    End Property

    Public Property NombreFormulario As String
        Get
            Return nombre_form
        End Get
        Set(value As String)
            nombre_form = value
        End Set
    End Property
End Class
