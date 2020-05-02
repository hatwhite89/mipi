<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmTipoUsuarioAccesos.aspx.vb" Inherits="mipi.frmTipoUsuarioAccesos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
 
             <div class="card">
                   <div class="header">
                <h2>Seleccione el tipo de usuario para asignar acceso a los servicios</h2>
            </div>
            <div class="body table-responsive">
                <!--GRID CON LOS PERMISOS QUE NO TIENE -->
                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tipo_usuario,nombre_tipo_usuario,descripcion" CssClass="table table-hover table-custom spacing5" >
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" />
                        <asp:BoundField DataField="id_tipo_usuario" HeaderText="ID TIPO USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="id_tipo_usuario" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="NOMBRE DEL TIPO DE USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                    </Columns>
                </asp:GridView>

                <!-- FIN DEL GRID CON LOS PERMISOS QUE NO TIENE-->
            </div>
        </div>
    </form>
</asp:Content>
