<%@ Page Title="Servicios" Language="vb" MasterPageFile="~/Site.Master"  AutoEventWireup="false" CodeBehind="frmServicios.aspx.vb" Inherits="mipi.frmServicios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
   
        <div class="card">
           

            <div class="body">
                   <% If txtCodigo.Text <> "" Then %>
            <div class="header text-center">
                <h6>Modificar Servicio</h6>
            </div>
             <%Else %>
            <div class="header text-center">
                <h6>Crear Servicio</h6>
            </div>
              <%End If%>
                <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label  style="color:orangered;">Código Servicio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label style="color:orangered;">*Nombre del Servicio</label>
                    <asp:TextBox ID="txtNombreServicio" required = "required" runat="server" CssClass="form-control" />
                </div>

           <div>
                    <p style="color: orangered;">*Seleccione una categoría de dervicio</p>

                </div>
                       <div class="input-group mb-3">
                                <div class="input-group-prepend"  style="background-color: aliceblue; color: white; font-weight: bold;">
                                    <label class="input-group-text" for="inputGroupSelect01">Categoría De Servicio</label>
                                </div>
                                   
                              <asp:DropDownList CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>
                 
                            </div>
                <br />
                <div class="form-group">
                    <label  style="color:orangered;">Descripción</label>
                    <asp:TextBox required = "required" AutoPostBack="false" ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
                </div>

                <br>

                <div class="form-group">
                    <label  style="color:orangered;">Estado</label>
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
            <div class="body table-responsive ">

                 <div class="header">
                    <h6 class="text-center ">LISTADO DE USUARIOS </h6>

                    <div class="btn-group-sm">

                        <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                        <br />
                    </div>
                </div>
                <!--tabla para actualizar -->
                <asp:GridView ID="GridView1" autopostback="true" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_servicio,nombre_servicio,descripcion_servicio,fecha_creacion,estado" CssClass="table-responsive" CellPadding="8" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar"  />
                        <asp:BoundField DataField="id_servicio" HeaderText="ID SERVICIO" InsertVisible="False" ReadOnly="True" SortExpression="id_servicio" />
                        <asp:BoundField DataField="nombre_servicio" HeaderText="SERVICIO" SortExpression="nombre_servicio" />
                        <asp:BoundField DataField="descripcion_servicio" HeaderText="DESCRIPCION" SortExpression="descripcion_servicio" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True"  />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                


                <!-- FIN DE LA TABLA-->
            </div>
        </div>
                <!-- modal-->

    </form>
      

</asp:Content>