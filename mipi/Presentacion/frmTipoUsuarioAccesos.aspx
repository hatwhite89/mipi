<%@ Page Title="Configurar accesos" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmTipoUsuarioAccesos.aspx.vb" Inherits="mipi.frmTipoUsuarioAccesos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
 
             <div class="card">
           
            <div class="body table-responsive">
                        <div class="header">
                <h6>*Seleccione el tipo de usuario para asignar acceso a los servicios</h6>
            </div>
                      <div class="btn-group-sm">
                              
                                      <button type="button" class="btn btn-round btn-info  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Info</button>
                      
                                      <br />
                                  </div>
                <!--GRID CON LOS PERMISOS QUE NO TIENE -->
                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tipo_usuario,nombre_tipo_usuario,descripcion" CssClass="" CellPadding="8" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="id_tipo_usuario" HeaderText="ID TIPO USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="id_tipo_usuario" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="NOMBRE DEL TIPO DE USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

                <!-- FIN DEL GRID CON LOS PERMISOS QUE NO TIENE-->
            </div>
        </div>
    </form>
</asp:Content>
