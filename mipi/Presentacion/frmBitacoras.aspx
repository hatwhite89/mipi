<%@ Page Title="Bitácoras" Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmBitacoras.aspx.vb" Inherits="mipi.frmBitacoras" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     

   <form runat="server">



 
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-12 col-sm-12">
                        <h1> Bitácoras del sistema</h1>
                    </div>     
                </div>
            </div>
			<div class="row clearfix" style="background:white;">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
               
                         <div class="row clearfix">
                              <div class="col-md-4 col-sm-12">
                                  <asp:Label ID="Label1" runat="server" Text="Label">Desde</asp:Label>
                               <asp:TextBox ID="txtInicio"  type="date"  runat="server" CssClass="form-control" />

                                  </div>

                                      <div class="col-md-4 col-sm-12">
                                          <asp:Label ID="Label2" runat="server" Text="Label">Hasta</asp:Label>

                                    <asp:TextBox ID="txtFin" type="date" runat="server" CssClass="form-control" />
                                  </div>
                               <div class="col-md-4 col-sm-12">
                                   <br />
                                   <asp:Button ID="Button1" runat="server" Text="Consultar"  CssClass="form-control"/>

                                   </div>
                            

                        </div>
                 
                    </div>
                </div>
			</div>
   <br /><br /><br />
       <div class="card">


                                         <div class="col-md-12 col-sm-12">
                                  <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-custom spacing5 " AutoGenerateColumns="False" DataKeyNames="id_bitacora" AllowPaging="True">
                                      <Columns>
                                          <asp:BoundField DataField="id_bitacora" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_bitacora" />
                                          <asp:BoundField DataField="usuario" HeaderText="USUARIO" SortExpression="usuario" />
                                          <asp:BoundField DataField="fecha" HeaderText="FECHA" SortExpression="fecha" />
                                          <asp:BoundField DataField="accion" HeaderText="ACCION" SortExpression="accion" />
                                          <asp:BoundField DataField="pagina_visito" HeaderText="URL" SortExpression="pagina_visito" />
                                      </Columns>


                                  </asp:GridView>
                                             <br />
 
 <asp:Button ID="btnExport" runat="server" Text="Exportar Excel" OnClick = "ExportToExcel" CssClass="btn btn-success mb-2" />
                            

                                  </div>
       </div>

   
</form>
 
</asp:Content>