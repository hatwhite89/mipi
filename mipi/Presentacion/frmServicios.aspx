<%@ Page Language="vb" MasterPageFile="~/Site.Master"  AutoEventWireup="false" CodeBehind="frmServicios.aspx.vb" Inherits="mipi.frmServicios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
   
        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Servicio</h2>
            </div>
             <%Else %>
            <div class="header">
                <h2>Crear Servicio</h2>
            </div>
              <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Servicio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre del Servicio</label>
                    <asp:TextBox ID="txtNombreServicio" required = "required" runat="server" CssClass="form-control" />
                </div>

                <br>
                       <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Categoría De Servicio</label>
                                </div>
                                   
                              <asp:DropDownList CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>
                 
                            </div>
                <br />
                <div class="form-group">
                    <label >Descripción</label>
                    <asp:TextBox required = "required" AutoPostBack="false" ID="txtDescripcion" TextMode="multiline" runat="server" CssClass="form-control" />
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
                <asp:GridView ID="GridView1" autopostback="true" ShowSelectButton="True" runat="server" AutoGenerateColumns="False" DataKeyNames="id_servicio,nombre_servicio,descripcion_servicio,fecha_creacion,estado" CssClass="table table-hover table-custom spacing5" >
                    <Columns>
                         <asp:CommandField ShowSelectButton="True"  />
                        <asp:BoundField DataField="id_servicio" HeaderText="ID SERVICIO" InsertVisible="False" ReadOnly="True" SortExpression="id_servicio" />
                        <asp:BoundField DataField="nombre_servicio" HeaderText="SERVICIO" SortExpression="nombre_servicio" />
                        <asp:BoundField DataField="descripcion_servicio" HeaderText="DESCRIPCION" SortExpression="descripcion_servicio" />
                        <asp:BoundField DataField="fecha_creacion" HeaderText="FECHA DE CREACION" SortExpression="fecha_creacion" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                    </Columns>
                </asp:GridView>
                


                <!-- FIN DE LA TABLA-->
            </div>
        </div>
                <!-- modal-->

    </form>
      

</asp:Content>