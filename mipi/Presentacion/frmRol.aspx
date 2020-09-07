<%@ Page Title="Roles" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmRol.aspx.vb" Inherits="mipi.frmRol" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
            

            <div class="body">
                 <% If txtCodigo.Text <> "" Then %>
            <div class="header text-center">
                <h6>Modificar Rol</h6>
            </div>
             <%Else %>
            <div class="header text-center">
                <h6>Crear Rol</h6>
            </div>
              <%End If%>
                   <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>
                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Rol</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label style="color:orangered;">*Nombre del Rol</label>
                    <asp:TextBox ID="txtNombreRol" required = "required" runat="server" CssClass="form-control" />
                </div>

                <br />
                   <div class="form-group">
                    <label style="color:orangered;">Descripción</label>
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
                                <div class="header">
                    <h6 class="text-center ">LISTADO DE ROLES DE USUARIO </h6>

                    <div class="btn-group-sm">

                        <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                        <br />
                    </div>
                </div>
                <!--tabla para actualizar -->
                <asp:GridView ID="GridView1" ShowSelectButton="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="id_rol,nombre_rol,descripcion"  CssClass="" CellPadding="8" ForeColor="#333333" GridLines="None"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="id_rol" HeaderText="ID ROL" InsertVisible="False" ReadOnly="True" SortExpression="id_rol" />
                        <asp:BoundField DataField="nombre_rol" HeaderText="ROL" SortExpression="nombre_rol" />
                        <asp:BoundField  DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
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