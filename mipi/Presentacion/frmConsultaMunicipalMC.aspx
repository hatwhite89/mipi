<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmConsultaMunicipalMC.aspx.vb" Inherits="mipi.frmConsultaMunicipalMC" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="auth-main particles_js">
    <div class="auth_div vivify popIn">
        <div class="auth_brand">
            <a class="navbar-brand" href="javascript:void(0);">MIPI</a>                                                
        </div>
        <div class="card page-400">
            <div class="body">
                <p class="lead mb-3"><span class="number left">404 </span><span class="text">Oops! <br/>Sección no disponible</span></p>
                <p>Esta sección no se encuentra disponible,disculpe la molestia. </p>
                <div class="margin-top-30">
                    <a href="javascript:history.go(-1)" class="btn btn-round btn-default btn-block"><i class="fa fa-arrow-left"></i> <span>Regresar</span></a>
                    <a href="Default.aspx" class="btn btn-round btn-primary btn-block"><i class="fa fa-home"></i> <span>Inicio</span></a>
                </div>
            </div>
        </div>
    </div>
    <div id="particles-js"></div>
</div>
        </form>
    </asp:Content>