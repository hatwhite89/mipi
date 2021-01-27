<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmConsultaMunicipal2.aspx.vb" Inherits="mipi.frmConsultaMunicipal2" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">




            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-12 col-sm-12">
                        <h1 class="text-center ">Cobertura de prestaciones de Educación prebásica </h1>
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
                                <li class="nav-item"><a class="nav-link   "  href="frmConsultaDepartamental.aspx">Departamental</a></li>
                                <li class="nav-item"><a class="nav-link active show"  href="frmConsultaMunicipal2.aspx">Municipal</a></li>
                            </ul>
                            <div class="tab-content">
                             
                                <div class="tab-pane  show active" >
                                     <div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://app.powerbi.com/view?r=eyJrIjoiMjgzYzY1MzktODE4My00OGRiLTkxNzctYmRhZDQxMmNmZGFkIiwidCI6ImRhZGNlMjlhLTIyZWItNGNlNC1hOGMwLWJiYmM1ODY3NTgxMiJ9"></iframe>
</div>                  </div>
                         
                            </div>
                        </div>
                    </div> 


                        </div>

   
</form>
       

</asp:Content>