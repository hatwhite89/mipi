Public Class clsMenuAdmin
    'variables
    Dim id_menu As Integer
    Dim etiqueta, url, icono As String
    Dim is_admin As Integer

    'Constructor
    Public Sub New()

    End Sub

    Public Property IdMenu As Integer
        Get
            Return id_menu
        End Get
        Set(value As Integer)
            id_menu = value
        End Set
    End Property

    Public Property EtiquetaMenu As String
        Get
            Return etiqueta
        End Get
        Set(value As String)
            etiqueta = value
        End Set
    End Property

    Public Property UrlMenu As String
        Get
            Return url
        End Get
        Set(value As String)
            url = value
        End Set
    End Property

    Public Property IconoMenu As String
        Get
            Return icono
        End Get
        Set(value As String)
            icono = value
        End Set
    End Property

    Public Property IsAdmin As Integer
        Get
            Return is_admin
        End Get
        Set(value As Integer)
            is_admin = value
        End Set
    End Property


End Class
