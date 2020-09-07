<%@ Page Title="Tema" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmTema.aspx.vb" Inherits="mipi.frmTema" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
        
            <div class="header">
                <h2>Cambiar Tema</h2>
            </div>
          
            <div class="body">

                <br>
                <div class="form-group">
                    <label>Estado</label>
                    <asp:RadioButtonList ID="rblEstado" runat="server">
                        <asp:ListItem Selected="True" Text="Light version" Value="1" />
                        <asp:ListItem Text="Dark version" Value="0" />
                    </asp:RadioButtonList>
                    <br />

                </div>
              
                <br>
                <asp:Button ID="btnGuardar" Text="Guardar" runat="server" CssClass="btn btn-primary" />
               
            </div>
        </div>

    </form>
</asp:Content>
