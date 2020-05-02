Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load


    End Sub
    Public Function CambiarTema() As Boolean

        Dim clsT As New clsTema

        Return clsT.RecuperarTema()

    End Function
End Class