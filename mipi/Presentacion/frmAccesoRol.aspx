<%@ Page Language="vb" MasterPageFile="~/Site.Master"  AutoEventWireup="false" CodeBehind="frmAccesoRol.aspx.vb" Inherits="mipi.frmAccesoRol" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Rol</h2>
            </div>
             <%Else %>
            <div class="header">
                <h2>Configurar accesos de roles</h2>
            </div>
              <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Acceso Rol</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Roles</label>
                    </div>

                    <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>

                </div>

                <br>
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Secciones</label>
                    </div>
                <asp:DropDownList ID="listadoSecciones" CssClass="custom-select" runat="server">
    <asp:ListItem Enabled="true" Text="Seleccione Seccion" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Gestantes y Puérperas" Value="Gestantes"></asp:ListItem>
    <asp:ListItem Text="Niños y Niñas" Value="BoyAndGirl"></asp:ListItem>

    <asp:ListItem Text="Madres y Cuidadores" Value="MothenAndC"></asp:ListItem>
                        <asp:ListItem Text="Consulta Nominal" Value="ConsultaNominal"></asp:ListItem>
                        <asp:ListItem Text="Permisos Totales" Value="allSystem"></asp:ListItem>
</asp:DropDownList>

                               </div>

                <asp:Button ID="b1" Text="Guardar" runat="server" CssClass="btn btn-primary" />
                    <% If txtCodigo.Text <> "" Then %>
                <asp:Button ID="btnNuevo" Text="Nuevo" runat="server" CssClass="btn btn-primary" />
              
                <%End If %>


            </div>


        </div>

        <div class="card">
             <div class="header">
                <h2>Eliminar Acceso Rol</h2>
            </div>
            <div class="body table-responsive">
                <!--tabla para actualizar -->
                <asp:GridView ID="GridView1" ShowSelectButton="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="id_acceso_rol"  CssClass="table table-hover table-custom spacing5"   >
                    <Columns>
                        <asp:CommandField  ShowSelectButton="True" />
                        <asp:BoundField DataField="id_acceso_rol" HeaderText="ID ACCESO" InsertVisible="False" ReadOnly="True" SortExpression="id_acceso_rol" />
                        <asp:BoundField DataField="nombre_variable" HeaderText="NOMBRE VARIABLE" SortExpression="nombre_variable" />
                        <asp:BoundField  DataField="id_rol" HeaderText="ID ROL" SortExpression="id_rol" />
                    </Columns>
                </asp:GridView>
                
                
       
                <!-- FIN DE LA TABLA-->
            </div>
        </div>

    </form>
</asp:Content>