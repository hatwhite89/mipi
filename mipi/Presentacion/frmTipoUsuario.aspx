<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmTipoUsuario.aspx.vb" Inherits="mipi.frmTipoUsuario" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
               <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Tipo De Usuario</h2>
            </div>
            <%Else %>
              <div class="header">
                <h2>Crear Tipo De Usuario</h2>
            </div>
               <%End If%>
            <div class="body">
                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Tipo Usuario</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre Tipo Usuario</label>
                    <asp:TextBox ID="txtNombreTipoUsuario" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label>Descripción</label>
                    <asp:TextBox ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
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

                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tipo_usuario,nombre_tipo_usuario,estado,descripcion,fecha_creacion" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_tipo_usuario" HeaderText="ID TIPO USUARIO" InsertVisible="False" ReadOnly="False" SortExpression="id_tipo_usuario" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="TIPO USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                    </Columns>
                </asp:GridView>

                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

