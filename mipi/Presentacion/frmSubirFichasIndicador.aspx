<%@ Page Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmSubirFichasIndicador.aspx.vb" Inherits="mipi.frmSubirFichasIndicador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <h1>Subir Fichas De Indicadores</h1><br />

                <asp:Label runat="server" id="StatusLabel" text="Por favor suba un archivo al sistema: " />

       <asp:FileUpload id="FileUploadControl" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Subir Ficha" onclick="UploadButton_Click" />
    <br /><br />

            <asp:Label runat="server" id="Label1" text="Listado de archivos: " />
           <asp:Panel ID="Panel1" runat="server"></asp:Panel>
           </form>
       

</asp:Content>