<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmRol.aspx.vb" Inherits="mipi.frmRol" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Rol</h2>
            </div>
             <%Else %>
            <div class="header">
                <h2>Crear Rol</h2>
            </div>
              <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Rol</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre del Rol</label>
                    <asp:TextBox ID="txtNombreRol" required = "required" runat="server" CssClass="form-control" />
                </div>

                <br />
                   <div class="form-group">
                    <label>Descripción</label>
                    <asp:TextBox ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
                </div>

                <br>
                <asp:Button ID="b1" Text="Guardar" runat="server" CssClass="btn btn-primary" />
                    <% If txtCodigo.Text <> "" Then %>
                <asp:Button ID="btnNuevo" Text="Nuevo" runat="server" CssClass="btn btn-primary" />
                <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" CssClass="btn btn-primary" />
                <%End If %>


            </div>


        </div>

        <div class="card">
            <div class="body table-responsive">
                <!--tabla para actualizar -->
                <asp:GridView ID="GridView1" ShowSelectButton="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="id_rol,nombre_rol,descripcion"  CssClass="table table-hover table-custom spacing5"  >
                    <Columns>
                         <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_rol" HeaderText="ID ROL" InsertVisible="False" ReadOnly="True" SortExpression="id_rol" />
                        <asp:BoundField DataField="nombre_rol" HeaderText="ROL" SortExpression="nombre_rol" />
                        <asp:BoundField  DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                    </Columns>
                </asp:GridView>
                
       
                <!-- FIN DE LA TABLA-->
            </div>
        </div>

    </form>
</asp:Content>