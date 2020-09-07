Public Class clsEducacionInicial
    Private numerador As New WsSace.SIM_SACESoapClient
    Private denominador As New WsRNP.MIPISoapClient


    Public Sub New()

    End Sub

    Public Sub EducacionInicialDepartamento(ByVal id_departamento)
        Dim indicador As Double
        indicador = numerador.CantidadEstimulacionTempranaDepartamento(1) / denominador.CantidadInfantesDepartamentoEdad(1, 4)
    End Sub

End Class
