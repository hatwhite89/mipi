<%@ Page Title="Tipo de usuario" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmTipoUsuario.aspx.vb" Inherits="mipi.frmTipoUsuario" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
             
            <div class="body">

                  <% If txtCodigo.Text <> "" Then %>
            <div class="header text-center">
                <h6>Modificar Tipo De Usuario</h6>
            </div>
            <%Else %>
              <div class="header text-center">
                <h6>Crear Tipo De Usuario</h6>
            </div>
               <%End If%>
                 <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>
                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label style="color:orangered;">Código Tipo Usuario</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>

                <div class="form-group">
                    <label style="color:orangered;">*Nombre Tipo Usuario</label>
                    <asp:TextBox ID="txtNombreTipoUsuario" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label style="color:orangered;">Descripción</label>
                    <asp:TextBox ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
                </div>

                <br>

                <div class="form-group">
                    <label style="color:orangered;">Estado</label>
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
                   <div class="header">
                    <h6 class="text-center ">LISTADO DE TIPOS DE USUARIO </h6>

                   
                </div>
                <!--tabla para actualizar -->

                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tipo_usuario,nombre_tipo_usuario,estado,descripcion,fecha_creacion" CssClass="" CellPadding="8" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="id_tipo_usuario" HeaderText="ID TIPO USUARIO" InsertVisible="False" ReadOnly="False" SortExpression="id_tipo_usuario" />
                        <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="TIPO USUARIO" SortExpression="nombre_tipo_usuario" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
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

                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

