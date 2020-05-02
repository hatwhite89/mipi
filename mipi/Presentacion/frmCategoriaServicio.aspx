<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmCategoriaServicio.aspx.vb" Inherits="mipi.frmCategoriaServicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Categoría De Servicio</h2>
            </div>
            <%Else %>
              <div class="header">
                <h2>Crear Categoría De Servicio</h2>
            </div>
                <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Categoría De Servicio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre de la Categoría De Servicio</label>
                    <asp:TextBox ID="txtNombreCatServicio" runat="server" CssClass="form-control" />
                </div>

                <br>
            

                <div class="form-group">
                    <label>Estado</label>
                    <asp:RadioButtonList ID="rblEstado" runat="server">
                        <asp:ListItem Selected="True" Text="Habilitado" Value="1" />
                        <asp:ListItem Text="Inhabilitado" Value="0" />
                    </asp:RadioButtonList>

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
                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_categoria_servicio,nombre_categoria,fecha_creacion,estado" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                          <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_categoria_servicio" HeaderText="ID CATEGORIA DE SERVICIO" InsertVisible="False" ReadOnly="True" SortExpression="id_categoria_servicio" />
                        <asp:BoundField DataField="nombre_categoria" HeaderText="NOMBRE DE CATEGORIA" SortExpression="nombre_categoria" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                    </Columns>
                </asp:GridView>
       
                <!-- FIN DE LA TABLA-->
            </div>
        </div>

    </form>
</asp:Content>