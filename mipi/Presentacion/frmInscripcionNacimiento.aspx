<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmInscripcionNacimiento.aspx.vb" Inherits="mipi.frmInscripcionNacimiento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">




            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-12 col-sm-12">
                        <h1 class="text-center ">Cobertura de prestaciones de Inscripción del nacimiento </h1>
                    </div>     
                </div>
            </div>
			<div class="row clearfix">
                <div class="col-lg-12 col-md-12 ">
                 </div>
                    <div class="card">
                   
                        <div class="body">
                            <ul class="nav nav-tabs3">
                                <li class="nav-item"><a class="nav-link"  href="frmConsultaNacional.aspx">Nacional</a></li>
                                <li class="nav-item"><a class="nav-link   active show"  href="frmConsultaDepartamental.aspx">Departamental</a></li>
                                <li class="nav-item"><a class="nav-link"  href="frmConsultaMunicipal2.aspx">Municipal</a></li>
                            </ul>
                            <div class="tab-content">
                             
                                <div class="tab-pane  show active" >
                                     <div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://app.powerbi.com/reportEmbed?reportId=6e7eb7ec-7b86-4d5a-a602-3ca2bea9fa5d&autoAuth=true&ctid=dadce29a-22eb-4ce4-a8c0-bbbc58675812&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLXBhYXMtMS1zY3VzLXJlZGlyZWN0LmFuYWx5c2lzLndpbmRvd3MubmV0LyJ9"></iframe>
</div>                  </div>
                         
                            </div>
                        </div>
                    </div> 


                        </div>

   
</form>
       

</asp:Content>
