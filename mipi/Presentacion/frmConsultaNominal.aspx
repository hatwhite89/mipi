<%@ Page Title="Consulta Nominal" Language="vb"  AutoEventWireup="false"  MasterPageFile="~/Site.Master" CodeBehind="frmConsultaNominal.aspx.vb" Inherits="mipi.frmConsultaNominal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

          
			<div class="row clearfix">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Busqueda Nominal </h2>
                        </div>
                        <div class="body">
                          
                             
									<div class ="row">
										<div class="col-md-2">   <asp:Label ID="Label5" runat="server" Text="INGRESE ID"></asp:Label></div>
										<div class="col-md-6">
                                             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>

										</div>
										<div class="col-md-4">  <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Buscar" /></div>
									</div>
							
                                  
                         <br />
                            
                           
							<div class="header">
								<h2>Informacion del infante</h2>
							</div>
                            <asp:Label ID="Label1" runat="server" Text="Nombres"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>

                            <asp:Label ID="Label6" runat="server" Text="Apellidos"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>

                            <asp:Label ID="Label2" runat="server" Text="Edad"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>

							     <asp:Label ID="Label7" runat="server" Text="Sexo"></asp:Label>
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>

                            <asp:Label ID="Label3" runat="server" Text="Departamento de Atención"></asp:Label>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>

                            <asp:Label ID="Label4" runat="server" Text="Municipio de Atención"></asp:Label>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                      
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
								<% If TextBox3.Text <> "" %>
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
											
										
										<% If RecuperarIndicador2() <> "" Then %>
										
												<tr>
													<th class="w60">1</th>
													<td>Educación Inicial</td>
												<td><span class="badge badge-primary">Atención prestada</span></td>
													<td><span class="badge badge-primary">SI</span></td>
												</tr>
												<%Else %>
												<tr>
													<th class="w60">1</th>
													<td>Educación Inicial</td>
												<td><span class="badge badge-danger">Atención no prestada</span></td>
												
												</tr>
												<%End If %>

													<% If RecuperarIndicador1() = "1" Then %>
												<tr>
													<th class="w60">2</th>
													<td>Educación prebásica</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
												
												</tr>
													<%Else %>
													<tr>
													<th class="w60">2</th>
													<td>Educación prebásica</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
												
												</tr>
													<%End If %>
													
										<% If RecuperarIndicador3() <> "" Then %>
												<tr>
													<th class="w60">3</th>
													<td>Inscripción del nacimiento</td>
													<td><span class="badge badge-primary">Atención prestada</span></td>
												
												</tr>
												<%Else %>
												<tr>
													<th class="w60">3</th>
													<td>Inscripción del nacimiento</td>
													<td><span class="badge badge-danger">Atención no prestada</span></td>
												
												</tr>
											<%End If %>
											</tbody>
										</table>
									</div>
								<%End If %>
								</div>
                        </div>
                    </div>
                </div>
            </div>
			
     </form>
</asp:Content>