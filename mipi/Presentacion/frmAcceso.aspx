<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmAcceso.aspx.vb" Inherits="mipi.frmAcceso" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <!--GRID PARA LOS PERMISOS ACTUALES-->
      <div class="card">
             <div class="header">
                <h2>Quitar acceso de servicios</h2>
            </div>
            <div class="body table-responsive">
                <!--tabla para actualizar -->

         
                <asp:GridView ID="GridView2"  ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_acceso,nombre_tipo_usuario,nombre_servicio" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                         <asp:CommandField  ShowSelectButton="True" />
                        <asp:BoundField DataField="id_acceso" HeaderText="ID ACCESO" InsertVisible="False" ReadOnly="True" SortExpression="id_acceso" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="TIPO DE USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:BoundField DataField="nombre_servicio" HeaderText="NOMBRE DEL SERVICIO" SortExpression="nombre_servicio" />
                    </Columns>
                </asp:GridView>
         
                <!-- FIN DE GRID PARA PERMISOS ACTUALES-->
            </div>
        </div>

             <div class="card">
                   <div class="header">
                <h2>Lista de Servicios para asignar acceso</h2>
            </div>
            <div class="body table-responsive">
                <!--GRID CON LOS PERMISOS QUE NO TIENE -->

                <asp:GridView  ShowSelectButton="True" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_servicio,nombre_servicio,descripcion_servicio" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                          <asp:CommandField  ShowSelectButton="True" />
                        <asp:BoundField DataField="id_servicio" HeaderText="ID SERVICIO" InsertVisible="False" ReadOnly="True" SortExpression="id_servicio" />
                        <asp:BoundField DataField="nombre_servicio" HeaderText="NOMBRE DEL SERVICIO" SortExpression="nombre_servicio" />
                        <asp:BoundField DataField="descripcion_servicio" HeaderText="DESCRIPCION DEL SERVICIO" SortExpression="descripcion_servicio" />
                    </Columns>
                </asp:GridView>
     
             
              
                <!-- FIN DEL GRID CON LOS PERMISOS QUE NO TIENE-->
            </div>
        </div>
    </form>
</asp:Content>
