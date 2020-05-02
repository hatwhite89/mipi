<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmMunicipio.aspx.vb" Inherits="mipi.frmMunicipio" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Municipio</h2>
            </div>
             <%Else %>
            <div class="header">
                <h2>Crear Municipio</h2>
            </div>
              <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Municipio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre del Municipio</label>
                    <asp:TextBox ID="txtNombreMunicpio" required = "required" runat="server" CssClass="form-control" />
                </div>

            
                <br />
                <div class="form-group">
                    <label >ID Externo</label>
                    <asp:TextBox   ID="txtIdExterno" runat="server" CssClass="form-control" />
                </div>

                <br>

           
                         <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Departamento</label>
                                </div>
                                   
                              <asp:DropDownList AutoPostBack="false" CssClass="custom-select" ID="DropDownList1" runat="server"></asp:DropDownList>
                 
                            </div>
                <br />
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
                <asp:GridView ID="GridView1" ShowSelectButton="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="id_municipio,nombre_municipio,id_municipio_externo,id_departamento,nombre_departamento"  CssClass="table table-hover table-custom spacing5" >
                    <Columns>
                          <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_municipio" HeaderText="ID MUNICIPIO" InsertVisible="False" ReadOnly="True" SortExpression="id_municipio" />
                        <asp:BoundField DataField="nombre_municipio" HeaderText="MUNICIPIO" SortExpression="nombre_municipio" />
                        <asp:BoundField  DataField="id_municipio_externo" HeaderText="ID EXTERNO" SortExpression="id_municipio_externo" />
                        <asp:BoundField Visible="false" DataField="id_departamento" HeaderText="id_departamento" SortExpression="id_departamento" />
                      <asp:BoundField DataField="nombre_departamento" HeaderText="DEPARTAMENTO" SortExpression="nombre_departamento" />
                    </Columns>
                </asp:GridView>
                
                  
                <!-- FIN DE LA TABLA-->
            </div>
        </div>

    </form>
</asp:Content>