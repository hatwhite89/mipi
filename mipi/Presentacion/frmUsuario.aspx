<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmUsuario.aspx.vb" Inherits="mipi.frmUsuario" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Usuario</h2>
            </div>
            <%Else %>
             <div class="header">
                <h2>Crear Usuario</h2>
            </div>
               <%End If%>
            <div class="body">

                    <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Usuario</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>
                <div class="form-group">
                    <label>Nombre De Usuario</label>
                    <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label>Password De Usuario</label>
                    <asp:TextBox ID="txtPassword" TextMode="password" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label>Estado</label>
                    <asp:RadioButtonList ID="rblEstado" runat="server">
                        <asp:ListItem Selected="True" Text="Habilitado" Value="1" />
                        <asp:ListItem Text="Inhabilitado" Value="0" />
                    </asp:RadioButtonList>
                    <br />

                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Tipo de usuario</label>
                    </div>

                    <asp:DropDownList  AutoPostBack="false" CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>

                </div>
                <br>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Rol de usuario</label>
                    </div>

                    <asp:DropDownList  AutoPostBack="false" CssClass="custom-select" ID="DropDownList2" runat="server"></asp:DropDownList>

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
            <div class="body table-responsive">
                <!--tabla para actualizar -->

                <asp:GridView ID="GridView1"  ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario,nombre_usuario,estado,fecha_creacion,id_tipo_usuario,nombre_tipo_usuario,nombre_rol" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                          <asp:CommandField  ShowSelectButton="True" />
                       
          
                        <asp:BoundField DataField="id_usuario" HeaderText="ID USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                        <asp:BoundField DataField="nombre_usuario" HeaderText="NOMBRE DE USUARIO" SortExpression="nombre_usuario" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                        <asp:BoundField  DataField="id_tipo_usuario" Visible="false" HeaderText="ID TIPO USUARIO" SortExpression="id_tipo_usuario" />
                         <asp:BoundField  DataField="nombre_tipo_usuario" HeaderText="TIPO DE USUARIO" SortExpression="nombre_tipo_usuario" />
                                    <asp:BoundField  DataField="nombre_rol" HeaderText="ROL" SortExpression="nombre_rol" />
                    </Columns>
                </asp:GridView>  
     
             
                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

