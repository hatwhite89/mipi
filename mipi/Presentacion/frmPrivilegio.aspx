<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmPrivilegio.aspx.vb" Inherits="mipi.frmPrivilegio" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
            <div class="header">
                 <% If txtCodigo.Text <> "" Then %>
                  <h2>Modificar Privilegio</h2>
                <% Else  %>
                <h2>Crear Privilegio</h2>
                   <%End If%>
            </div>
            <div class="body">

                    <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Codigo Privilegio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>
                <div class="form-group">
                    <label>Nombre De Privilegio</label>
                    <asp:TextBox ID="txtNombrePrivilegio" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label >Descripcion</label>
                    <asp:TextBox required = "required"  ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
                </div>


          
            
               
                <br>
                <asp:Button ID="btnGuardar" Text="Guardar" runat="server" CssClass="btn btn-primary" />
                   <% If txtCodigo.Text <> "" Then %>
                <asp:Button ID="btnNuevo" Text="Nuevo" runat="server" CssClass="btn btn-primary" />
                <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" CssClass="btn btn-primary" />
                <%End If %>
            </div>
        </div>

             <div class="card">
                  <div class="header">
                <h2>Listado De Privilegios</h2>
            </div>
            <div class="body table-responsive">
                <!--tabla para actualizar -->

                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_privilegio,nombre_privilegio,descripcion,fecha_creacion" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                         <asp:CommandField  ShowSelectButton="True" />
                        <asp:BoundField HeaderText="ID PRIVILEGIO" DataField="id_privilegio" InsertVisible="False" ReadOnly="True" SortExpression="id_privilegio" />
                        <asp:BoundField HeaderText="NOMBRE DEL PRIVILEGIO" DataField="nombre_privilegio" SortExpression="nombre_privilegio" />
                        <asp:BoundField HeaderText="DESCRIPCION" DataField="descripcion" SortExpression="descripcion" />
                        <asp:BoundField HeaderText="FECHA DE CREACION" DataField="fecha_creacion" SortExpression="fecha_creacion" />
                    </Columns>
                </asp:GridView>
     
             
                     
                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

