<%@ Page Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmConsultaDepartamental.aspx.vb" Inherits="mipi.frmConsultaDepartamental" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-12 col-sm-12">
                    <h1>Cobertura de prestaciones de servicio de la Primera Infancia - Gestantes y Puérperas</h1>
                </div>
                <div class="col-md-6 col-sm-12 text-right hidden-xs">
                </div>
            </div>
        </div>
  

 
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                      
                    <div class="header">
                     
    <br />
                       
                        <h2>Departamento   <asp:Label ID="Label1" runat="server" /> </h2>
                   
                            </div> 
                    <div class="body">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01">Departamentos</label>
                            </div>

                            <asp:DropDownList AutoPostBack="true" CssClass="custom-select" OnSelectedIndexChanged="DropDownListDepartamentos_SelectedIndexChanged" ID="DropDownListDepartamentos" runat="server"></asp:DropDownList>

                        </div>
                        <br />
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01">Servicios</label>
                            </div>

                            <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownServicio" runat="server"></asp:DropDownList>

                        </div>
                        <br />
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01">Indicadores</label>
                            </div>

                            <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownIndicador" runat="server"></asp:DropDownList>

                        </div>
								<br><br>
								<div class="col-12">
                                    <asp:Panel ID="Panel1" runat="server" ></asp:Panel>
								</div>
                        </div>
                    </div>
                </div>
			</div>

        <!-- GRAFICOS-->
			<div class="row clearfix">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Tendencia Prestaciones Departamento <asp:Label ID="Label2" runat="server" /></h2>
                        </div>
                        <div class="body">
                            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Line" XValueMember="nombre_departamento" YValueMembers="id_departamento"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Cobertura de Prestaciones de Acuerdo a Edad</h2>
                        </div>
                        <div class="body">
                            <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource1">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Spline" XValueMember="nombre_departamento" YValueMembers="id_departamento"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
			<div class="row clearfix">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Porcentaje por Prestaciones en Departamento  <asp:Label ID="Label3" runat="server" /></h2>
                        </div>
                        <div class="body">
                            <asp:Chart ID="Chart2" runat="server" BackImageAlignment="Center" CssClass="mt-4 c3" DataSourceID="SqlDataSource1"  >
                                <Series>
                                    <asp:Series Name="Series1" XValueMember="nombre_departamento" YValueMembers="id_departamento"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Porcentaje de Prestaciones por Departamento <asp:Label ID="Label4" runat="server" /></h2>
                        </div>
                        <div class="body">
                            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Radar" XValueMember="nombre_departamento" YValueMembers="id_departamento"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:unicef_coreConnectionString %>" SelectCommand="SELECT [nombre_departamento], [id_departamento] FROM [Departamento]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
     
            </form>
 
</asp:Content>