<%@ Page Title="Privilegios" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmPrivilegio.aspx.vb" Inherits="mipi.frmPrivilegio" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
         
            <div class="body">
                   <div class="header text-center">
                 <% If txtCodigo.Text <> "" Then %>
                  <h6>Modificar Privilegio</h6>
                <% Else  %>
                <h6>Crear Privilegio</h6>
                   <%End If%>
            </div>
                  <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>
                    <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Codigo Privilegio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>
                <div class="form-group">
                    <label style="color: orangered;">*Nombre De Privilegio</label>
                    <asp:TextBox ID="txtNombrePrivilegio" runat="server" CssClass="form-control" />
                </div>

                <br>
                <div class="form-group">
                    <label style="color: orangered;">Descripcion</label>
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
                 <div class="body table-responsive">
                <div class="header">
                    <h6 class="text-center ">LISTADO DE PRIVILEGIOS</h6>

               
                </div>
            <div class="body table-responsive">
                <!--tabla para actualizar -->

                <asp:GridView ID="GridView1" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_privilegio,nombre_privilegio,descripcion,fecha_creacion" CssClass="" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:CommandField  ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField HeaderText="ID PRIVILEGIO" DataField="id_privilegio" InsertVisible="False" ReadOnly="True" SortExpression="id_privilegio" />
                        <asp:BoundField HeaderText="NOMBRE DEL PRIVILEGIO" DataField="nombre_privilegio" SortExpression="nombre_privilegio" />
                        <asp:BoundField HeaderText="DESCRIPCION" DataField="descripcion" SortExpression="descripcion" />
                        <asp:BoundField HeaderText="FECHA DE CREACION" DataField="fecha_creacion" SortExpression="fecha_creacion" />
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
     
             </div>
                     
                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>

