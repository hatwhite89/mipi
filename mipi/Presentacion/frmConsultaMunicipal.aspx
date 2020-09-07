<%@ Page Title="Consulta municipal" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmConsultaMunicipal.aspx.vb" Inherits="mipi.frmConsultaMunicipal" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-12 col-sm-12">
                </div>
                <div class="col-md-6 col-sm-12 text-right hidden-xs">
                </div>
            </div>
        </div>

        <!-- MENU PARA SELECCION DE CONSULTA -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">

                    <div class="header">
                              <h2 class="text-center ">Cobertura de prestaciones de servicio de la Primera Infancia - Municipal</h2>



                    </div>
                    <div class="body">
                        <!--MUNICIPIOS-->
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="btn-group-sm">
                                    <asp:Label ID="Label1" runat="server" Text="Label">Atlantida</asp:Label>
                                 
                                </div>
                                <div>
                                    <hr style="border-color: black;">
                                </div>

                                <div class="row">
                                    <div class="col-md-10">
                                        <div>
                                            <p style="color: orangered;">*Seleccione un departamento</p>


                                        </div>
                                        <div class="input-group mb-10">
                                            <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">
                                                <label class="input-group-text" for="inputGroupSelect01">Departamentos</label>
                                            </div>

                                            <asp:DropDownList AutoPostBack="true" CssClass="custom-select" OnSelectedIndexChanged="DropDownListDepartamentos_SelectedIndexChanged" ID="DropDownListDepartamentos" runat="server" TabIndex="0">
                                                   <asp:ListItem Enabled="true" Text="Seleccione un departamento" Value="-1"></asp:ListItem>
                                                <asp:ListItem Text="ATLÁNTIDA" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="COLÓN" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="Comayagua" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="COPÁN" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="CORTÉS" Value="5"></asp:ListItem>
                                                <asp:ListItem Text="Choluteca" Value="6"></asp:ListItem>
                                                <asp:ListItem Text="El Paraíso" Value="7"></asp:ListItem>
                                                <asp:ListItem Text="Francisco Morazán" Value="8"></asp:ListItem>
                                                <asp:ListItem Text="Gracias a Dios" Value="9"></asp:ListItem>
                                                <asp:ListItem Text="Intibucá" Value="11"></asp:ListItem>
                                                <asp:ListItem Text="Islas de la Bahía" Value="10"></asp:ListItem>

                                                <asp:ListItem Text="La paz" Value="13"></asp:ListItem>
                                                <asp:ListItem Text="LEMPIRA" Value="12"></asp:ListItem>
                                                <asp:ListItem Text="Ocotepeque" Value="14"></asp:ListItem>
                                                <asp:ListItem Text="Olancho" Value="15"></asp:ListItem>
                                                <asp:ListItem Text="Santa Bárbara" Value="16"></asp:ListItem>
                                                <asp:ListItem Text="Valle" Value="17"></asp:ListItem>
                                                <asp:ListItem Text="YORO" Value="18"></asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>

                      
                      
                                <div class="col-md-2">
                                        <% If DropDownListDepartamentos.SelectedValue.ToString = "1" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/atlantida.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "2" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/choluteca.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "3" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/colon.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "4" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/comayagua.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "5" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/copan.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "6" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/cortes.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "7" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/elparaiso.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "8" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/fm.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "9" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/gracias.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "10" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/intibuca.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "11" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/islas.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "12" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/lapaz.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "13" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/lempira.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "14" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/ocotepeque.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "15" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/olancho.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "16" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/santa.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "17" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/valle.png" />
                                        <%
                                            ElseIf DropDownListDepartamentos.SelectedValue.ToString = "18" Then
                                        %>
                                        <img class="card-img-top " src="../Content/departamentos/yoro.png" />
                                        <%
                                        End If %>
                                    </div>

                                </div>


                                <div>
                                    <p style="color: orangered;">*Seleccione un municipio</p>


                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">

                                        <label class="input-group-text" for="inputGroupSelect01">Municipio</label>
                                    </div>

                                    <asp:DropDownList AutoPostBack="true" CssClass="custom-select" ID="DropDownList1" runat="server">
                                

                                    </asp:DropDownList>

                                </div>


                            </ContentTemplate>

 
                        </asp:UpdatePanel>
                        <!--FIN DE LOS MUNICIPIOS-->
                        <div>
                            <p style="color: orangered;">*Seleccione un indicador</p>


                        </div>
                        <!-- SELECCIONAR INDICADOR -->
                        <div class="input-group mb-3">
                            <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">
                                <label class="input-group-text" for="inputGroupSelect01">Indicadores</label>
                            </div>

                            <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownIndicador" runat="server"></asp:DropDownList>

                        </div>
                        <!--FIN DE LOS INDICADORES -->

                        <!--SELECCIONAR TIPO DE GRAFICO A MOSTRAR -->
                        
                       
                        <!-- FIN -->

                        <!--BOTON CONSULTA -->
                        <div class="input-group mb-3">

                            <asp:Button ID="Button1" runat="server" Text="Consultar" CssClass="form-control  	btn btn-outline-primary" BackColor="#3399FF" ForeColor="White" />

                        </div>
                        <!-- FIN -->
                        <br />

                      

                    </div>
                </div>
            </div>

       
        </div>

        <!-- FIN MENU PARA SELECCION DE CONSULTA -->

        <% If bandera = 1 Then %>

        <!-- GRAFICOS-->
       
        <div class="row clearfix">

            <!-- TERCER GRAFICO -->
          
            <div class=" col-md-12">
                <div class="card">
                    <div class="header">
                      
                    </div>
                    <div class="body">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load('current', { 'packages': ['table'] });
                            google.charts.setOnLoadCallback(drawTable);

                            function drawTable() {
                              <% if DropDownIndicador.SelectedValue = 1 Then %>
                                var data = google.visualization.arrayToDataTable(<%=obtenerPorcentajesMatriculaGenero()%>);
            <%ElseIf DropDownIndicador.SelectedValue = 2 %>
            var data = google.visualization.arrayToDataTable(<%=obtenerPorcentajesTercerGrado()%>);
            <%End If%>




                                var table = new google.visualization.Table(document.getElementById('table_div'));

                                table.draw(data, { showRowNumber: true, width: '100%', height: '100%' });
                            }
                        </script>


                        <div id="table_div"></div>



                    </div>
                </div>
            </div>
         
            <!-- CUARTO GRAFICO-->
       
            <div class=" col-md-12">
                <div class="card">
                    <div class="header">
                   
                    </div>
                    <div class="body">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load('current', { 'packages': ['line'] });
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {
                       
                              <% if DropDownIndicador.SelectedValue = 1 Then %>
                                var data = google.visualization.arrayToDataTable(<%=obtenerPorcentajesMatriculaGenero()%>);
            <%ElseIf DropDownIndicador.SelectedValue = 2 Then%>
            var data = google.visualization.arrayToDataTable(<%=obtenerPorcentajesTercerGrado()%>);
            <%End If%>

                                var options = {
                                    chart: {
                                        title: '<%DropDownList1.SelectedValue.ToString%>',
                                        subtitle: ''
                                    },
                                   
                                };

                                var chart = new google.charts.Line(document.getElementById('linechart_material'));

                                chart.draw(data, google.charts.Line.convertOptions(options));
                            }
                        </script>
                        <div id="linechart_material"></div>

                    </div>
                </div>
            </div>

        </div>
      
        <div class ="card">
             <div class="body">
                 <% If DropDownIndicador.SelectedValue = 1 Then %>
                            <p><%=DropDownIndicador.SelectedItem.Text%> </p>
                 <%ElseIf DropDownIndicador.SelectedValue = 2 Then  %>
                  <p><%=DropDownIndicador.SelectedItem.Text%> </p>
                 <%End If %>
                            <ul class="nav nav-tabs">
                                <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#Home">Descripción</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Profile"> Información de la Formula</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Contact">Fuentes</a></li>
                            </ul>
                   <% If DropDownIndicador.SelectedValue = 1 Then %>
                                 <div class="tab-content">
                                <div class="tab-pane show vivify fadeIn active" id="Home">

                                   
                                    <p>La ley fundamental de educación reconoce la educación pre básica como el primer nivel de la educación formal, cuya finalidad es favorecer el crecimiento y desarrollo integral de las capacidades físicas y motoras, socio afectivas, lingüísticas y cognitivas de los niños y niñas para su adaptación en el contexto escolar y comunitario. Comprende las edades entre los 4 a los 6 años y contempla los siguientes grados: 
 </p><p>•	Primer año de educación pre básica: tres a cuatro años de edad.</p>
 <p>•	Segundo año de educación pre básica: cuatro a cinco años de edad.</p>
 <p>•	Tercer año de educación prebásica: cinco a seis años de edad
</p>
                                </div>
                                <div class="tab-pane vivify fadeIn" id="Profile">
                                   
                                    <p>Número de niños matriculados en todo el nivel de educación prebásica que tengan de 3 a 5 años de edad /</p>
                                       <p> Número de niños entre 3 a 5 años de edad X 100</p>
                                </div>
                                <div class="tab-pane vivify fadeIn" id="Contact">
                               
                        
<p>Numerador: Sistema de Administración de Centros Educativos (SACE)</p>
<p>Denominador: Registros del RNP </p>

                                </div>
                            </div>
                 <%ElseIf DropDownIndicador.SelectedValue = 2 Then  %>
                       <div class="tab-content">
                                <div class="tab-pane show vivify fadeIn active" id="Home">

                                    
                                    <p>La ley fundamental de educación reconoce la educación pre básica como el primer nivel de la educación formal, cuya finalidad es favorecer el crecimiento y desarrollo integral de las capacidades físicas y motoras, socio afectivas, lingüísticas y cognitivas de los niños y niñas para su adaptación en el contexto escolar y comunitario. Comprende las edades entre los 4 a los 6 años y contempla los siguientes grados: 
 </p><p>•	Primer año de educación pre básica: tres a cuatro años de edad.</p>
 <p>•	Segundo año de educación pre básica: cuatro a cinco años de edad.</p>
 <p>•	Tercer año de educación prebásica: cinco a seis años de edad
</p>
                                </div>
                                <div class="tab-pane vivify fadeIn" id="Profile">
                                
                               <p>Número de niños matriculados en el tercer grado de educación prebásica que tengan 5 años de edad /</p>
                                    <p> Número de niños de 5 años de edad X 100</p>
                                </div>
                                <div class="tab-pane vivify fadeIn" id="Contact">
                            
                        
<p>Numerador: Sistema de Administración de Centros Educativos (SACE)</p>
<p>Denominador:Registros del RNP </p>

                                </div>
                            </div>
                 <%End If %>
                    



             </div>
        </div>

          <%End If %>
    </form>
   <div class="modal fade Form-Wizard-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Monitoreo de indicadores a nivel departamental</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body pricing_page">
                                            <div id="wizard_horizontal">
                                           
                                                <section>
                                                    <p>Dentro de esta sección se realiza el monitoreo de los indicadores a nivel municipal. </p>
 <p>Actualmente se cuenta con 15 indicadores, los cuales pueden ser descargados en formato Excel y generar un reporte interesante. 
 </p>
                                                </section>
                                               
                                              
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                  <div class="modal fade launch-pricing-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">                                            
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        </div>
                                        <div class="modal-body pricing_page text-center pt-4 mb-4">
                                            <h5>Ayuda</h5>
                                            <p class="mb-4">Por favor haga clic en el video para aprender sobre el uso de la herramienta</p>
                                           <iframe width="560" height="315" src="https://www.youtube.com/embed/g-Ayl9BhnOw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>

</asp:Content>
