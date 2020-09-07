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
                               En cada pagina donde usted tenga acceso, en la parte superior tendrá los botones de ayuda y de información, los cuales sirven de guías sobre el contenido que aparece y las herramientas que se le presentan.
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
                                   En esta plataforma de acuerdo con los privilegios que tenga el usuario podrá acceder al módulo de prestación de servicios de primera infancia, el cual se divide en Gestantes y Puérperas, Niños y Niñas, Madres y Cuidadores, los cuales se subdividen en nivel nacional, departamental y municipal.
                                    </div>
                                </div>
                            </div>

                            <div>
                                <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree-faqs" aria-expanded="false" aria-controls="collapseThree">
                                        Pregunta: ¿Qué indicadores podre visualizar?
                                    </button>
                                </h5>
                                </div>
                                <div id="collapseThree-faqs" class="collapse" aria-labelledby="headingThree" data-parent="#accordion-faqs" style="">
                                    <div class="body">
                                     <p>   1.	Atención Pre natal</p>
 <p>2.	Atención de parto</p>
 <p>3.	Atención Puerperal </p>
 <p>4.	Promoción de lactancia materna exclusiva</p>
 <p>5.	Vigilancia nutricional.</p>
 <p>6.	Detección temprana de signos de peligro de las enfermedades prevalentes de la infancia.</p>
 <p>7.	Atención integral a niños con enfermedades prevalentes de la infancia.</p>
 <p>8.	Vacunación infantil</p>
 <p>9.	Agua y saneamiento.</p>
 <p>10.	Educación Inicial.</p>
 <p>11.	Educación prebásica.</p>
 <p>12.	Alimentación  preescolar.</p>
 <p>13.	Espacios públicos para el arte, cultura y deporte.</p>
 <p>14.	Inscripción del nacimiento.</p>
 <p>15.	Protección a la primera infancia2.</p>

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