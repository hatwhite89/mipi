<%@ Page Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmSubirCuidadores.aspx.vb" Inherits="mipi.frmSubirCuidadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container">

            <h2>Cargar base de datos Cuidadores</h2>
            <p>Instrucciones</p>
            <p>Descargue el formato en Excel que se encuentra  en la parte inferior,busque el municipio y agregue la cantidad que corresponde a cada municipio.</p>

            <p>Despues busque el archivo de Excel que ha modificado, haga clic en el boton Subir Excel, haga clic en el boton Importar, para subir los valores a la base de datos del sistema.</p>
        <br />
        </div>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" Text="Subir Excel" runat="server"
        ControlToValidate="FileUpload1"
        ErrorMessage="Solo archivos xls o xlsx" Font-Bold="True"
        Font-Size="Medium"
        ForeColor="Red"
        ValidationGroup="ValidarArchivo"
        ValidationExpression="(.*?)\.(xls|xlsx)$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1"  CssClass="btn btn-primary btn-round" runat="server" Text="Importar" />
        </form>
    </asp:Content>