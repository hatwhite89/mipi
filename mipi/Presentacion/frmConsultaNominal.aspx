<%@ Page Language="vb"  AutoEventWireup="false"  MasterPageFile="~/Site.Master" CodeBehind="frmConsultaNominal.aspx.vb" Inherits="mipi.frmConsultaNominal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

          
			<div class="row clearfix">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Busqueda Nominal </h2>
                        </div>
                        <div class="body">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <button class="btn btn-primary" type="button">Buscar Por ID: </button>
                                </div>
                                <input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1">
                            </div>
							<div class="header">
								<h2>Informacion del Niño</h2>
							</div>
							
							<label for="basic-url">Nombre</label>
                            <input type="text" class="form-control" id="basic-url" value="Angel Alberto Maldonado Hernandez" aria-describedby="basic-addon3">
							<label for="basic-url">Edad</label>
                            <input type="text" class="form-control" id="basic-url" value="4 años" aria-describedby="basic-addon3">
							<label for="basic-url">Departamento de Atención</label>
                            <input type="text" class="form-control" id="basic-url" value="FRANCISCO MORAZÁN" aria-describedby="basic-addon3">
							<label for="basic-url">Municipio de Atención</label>
                            <input type="text" class="form-control" id="basic-url" value="DISTRITO CENTRAL" aria-describedby="basic-addon3">
                        </div>
                    </div>
                </div>
            </div>
			
			<div class="row clearfix">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Indicadores</h2>
                        </div>
                        <div class="body">
                            <div class="col-12-md">
									<div class="table-responsive">
										<table class="table header-border table-hover table-custom spacing5">
											<thead>
												<tr>
													<th>#</th>
													<th>Listado de atenciones</th>
													<th>Estatus de la prestación</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th class="w60">1</th>
													<td>Atención Pre natal</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">2</th>
													<td>Atención de parto</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
													<td><span class="badge badge-danger">NO</span></td>
												</tr>
												<tr>
													<th class="w60">3</th>
													<td>Atención Puerperal</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
													<td><span class="badge badge-danger">NO</span></td>
												</tr>
												<tr>
													<th class="w60">4</th>
													<td>Promoción de lactancia materna exclusiva</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">5</th>
													<td>Vigilancia nutricional</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">6</th>
													<td>Detección temprana de signos de peligro de las enfermedades prevalentes de la infancia</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">7</th>
													<td>Atención integral a niños con enfermedades prevalentes de la infancia</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
													<td><span class="badge badge-danger">NO</span></td>
												</tr>
												<tr>
													<th class="w60">8</th>
													<td>Vacunación infantil</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">9</th>
													<td>Agua y saneamiento</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
													<td><span class="badge badge-danger">NO</span></td>
												</tr>
												<tr>
													<th class="w60">10</th>
													<td>Educación Inicial</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
													<td><span class="badge badge-danger">NO</span></td>
												</tr>
												<tr>
													<th class="w60">11</th>
													<td>Educación prebásica</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">12</th>
													<td>Merienda preescolar</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">13</th>
													<td>Espacios públicos para el arte, cultura y deporte</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">14</th>
													<td>Inscripción del nacimiento</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<tr>
													<th class="w60">15</th>
													<td>Protección a la primera infancia</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
                        </div>
                    </div>
                </div>
            </div>
			
     </form>
</asp:Content>