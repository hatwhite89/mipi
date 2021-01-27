<%@ Page Title="Ayuda" Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmAyuda.aspx.vb" Inherits="mipi.frmAyuda" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     

      

        <div class="container">
  
            <div class="row clearfix">
                <div class="card mt-4">
                    <div class="header">
                        <h2>Preguntas Frecuentes</h2>
               
                    </div>
                    <div class="body">
                        <div class="accordion" id="accordion-faqs">
                            <div>
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne-faqs" aria-expanded="false" aria-controls="collapseOne">
                                        Pregunta: ¿Cómo se utiliza la plataforma?
                                        </button>
                                    </h5>
                                </div>                                
                                <div id="collapseOne-faqs" class="collapse" aria-labelledby="headingOne" data-parent="#accordion-faqs" style="">
                                    <div class="body">
                               En cada página donde usted tenga acceso, en la parte superior tendrá los botones de ayuda y de información, los cuales sirven de guías sobre el contenido que aparece y las herramientas que se le presentan. Estos botones son:
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo-faqs" aria-expanded="false" aria-controls="collapseTwo">
                                            Pregunta: ¿Qué secciones tiene esta plataforma?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo-faqs" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-faqs" style="">
                                    <div class="body">
                                <p>En el lado derecho de la página de inicio se encuentra el acceso a los módulos  de esta plataforma (algunos de ellos aún en construcción). De acuerdo con los privilegios que tenga el usuario podrá acceder a los siguientes módulos: </p>
<p>Cobertura de prestaciones de servicio: muestra indicadores de cobertura de las prestaciones de servicio que el país ha definido como prioritarias para la primera infancia. </p>
<p>Competencias de cuidadores: muestra indicadores de conocimientos y prácticas adquiridos por los cuidadores para la crianza adecuada de los menores de seis años. </p>
<p>Desarrollo del niño: este módulo muestra los indicadores de impacto en la primera infancia, entre ellos: nutrición, desarrollo infantil, etc. </p>
<p>Condiciones  del hogar: muestra indicadores de acceso de los hogares a agua, saneamiento, piso, techo, pared adecuada, y otros indicadores del contexto en que viven los hogares con niños menores de 6 años como pobreza, amenazas ambientales, etc. </p>
<p>Fichas técnicas de indicadores: podrá encontrar las fichas que explican cómo se ha calculado cada indicador incluido en MIPI . </p>
<p>Consulta nominal: este módulo (restringido para algunos usuarios) muestra los servicios recibidos por cada niño menor de seis años. </p>
                    </div>
                                </div>
                            </div>

                            <div>
                           
                                <div id="collapseThree-faqs" class="collapse" aria-labelledby="headingThree" data-parent="#accordion-faqs" style="">
                                    <div class="body">
                                 

                                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                      <div class="row clearfix" style="background:white;">
             
   
                <div class=" col-md-12 ">
                   <div class="card mt-4">
                        <h6 class="title">Escribir un mensaje al administrador del sistema</h6>
                        <form>
                            <div class="input-group mb-2">
                                <input type="text" class="form-control" placeholder="Tu Nombre">
                            </div>
                            <div class="input-group mb-2">
                                <input type="text" class="form-control" placeholder="Tu Email">
                            </div>
                            <div class="input-group mb-2">
                                <textarea type="text" class="form-control" placeholder="Tu Mensaje" rows="2"></textarea>
                            </div>
                            <button type="button" class="btn btn-primary btn-round">Enviar</button>
                        </form>
                    </div>
                </div>
      
            </div>
        </div>

    


 
</asp:Content>