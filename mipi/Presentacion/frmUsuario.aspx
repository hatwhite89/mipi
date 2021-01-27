<%@ Page Title="Usuarios" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmUsuario.aspx.vb" Inherits="mipi.frmUsuario" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
           

            <div class="body">
                <div> <% If txtCodigo.Text <> "" Then %>
            <div class="header text-center">
                <h6>Modificar Usuario</h6>
            </div>
            <%Else %>
            <div class="header text-center">
                <h6>Crear Usuario</h6>
            </div>
            <%End If%></div>


                <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>
                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label style="color:orangered;">Código Usuario</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>
                <div class="form-group">
                    <label style="color:orangered;">*Nombre De Usuario</label>
                    <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label style="color:orangered;">*Password De Usuario</label>
                    <asp:TextBox ID="txtPassword" TextMode="password" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label style="color:orangered;">Estado</label>
                    <asp:RadioButtonList ID="rblEstado" runat="server">
                        <asp:ListItem Selected="True" Text="Habilitado" Value="1" />
                        <asp:ListItem Text="Inhabilitado" Value="0" />
                    </asp:RadioButtonList>
                    <br />

                </div>
                 <div>
                    <p style="color: orangered;">*Seleccione un tipo de usuario</p>

                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">
                        <label class="input-group-text" for="inputGroupSelect01">Tipo de usuario</label>
                    </div>

                    <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>

                </div>
                <div>
                    <p style="color: orangered;">*Seleccione un rol de usuario</p>

                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">
                        <label class="input-group-text" for="inputGroupSelect01">Rol de usuario</label>
                    </div>

                    <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownList2" runat="server"></asp:DropDownList>

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
                <div class="header">
                    <h6 class="text-center ">LISTADO DE USUARIOS </h6>

                 
                </div>
                <!--tabla para actualizar -->

                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario,nombre_usuario,estado,fecha_creacion,id_tipo_usuario,nombre_tipo_usuario,nombre_rol" CssClass=" " CellPadding="8" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />


                        <asp:BoundField DataField="id_usuario" HeaderText="ID USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                        <asp:BoundField DataField="nombre_usuario" HeaderText="NOMBRE DE USUARIO" SortExpression="nombre_usuario" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                        <asp:BoundField DataField="id_tipo_usuario" Visible="false" HeaderText="ID TIPO USUARIO" SortExpression="id_tipo_usuario" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="TIPO DE USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:BoundField DataField="nombre_rol" HeaderText="ROL" SortExpression="nombre_rol" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>


                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

