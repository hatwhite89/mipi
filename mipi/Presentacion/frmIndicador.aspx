<%@ Page Title="Indicador" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmIndicador.aspx.vb" Inherits="mipi.frmIndicador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Indicador</h2>
            </div>
            <%Else %>
             <div class="header">
                <h2>Crear Indicador</h2>
            </div>
               <%End If%>
            <div class="body">

                    <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Indicador</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
                <br>
                <%End If%>
                <div class="form-group">
                    <label>Nombre Del Indicador</label>
                    <asp:TextBox ID="txtNombreIndicador" runat="server" CssClass="form-control" />
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
                    <br />

                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">Tipo de Servicio</label>
                    </div>

                    <asp:DropDownList  AutoPostBack="false" CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>

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

                <asp:GridView ShowSelectButton="True" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_indicador,nombre_indicador,descripcion,estado,nombre_servicio,id_servicio"  CssClass="table table-hover table-custom spacing5">
                    <Columns>
                             <asp:CommandField  ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="id_indicador" HeaderText="ID INDICADOR" InsertVisible="False" ReadOnly="True" SortExpression="id_indicador" />
                        <asp:BoundField DataField="nombre_indicador" HeaderText="INDICADOR" SortExpression="nombre_indicador" />
                        <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
                        <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" />
                     
                        <asp:BoundField DataField="nombre_servicio" HeaderText="SERVICIO" SortExpression="nombre_servicio" />
                    <asp:BoundField Visible="false" DataField="id_servicio" HeaderText="ID SERVICIO" SortExpression="d_servicio" />
                   
                        </Columns>
                </asp:GridView>
     
             
                
             
                <!-- FIN DE LA TABLA-->
            </div>
        </div>
    </form>
</asp:Content>