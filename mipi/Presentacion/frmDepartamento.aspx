<%@ Page Language="vb" AutoEventWireup="false"  MasterPageFile="~/Site.Master" CodeBehind="frmDepartamento.aspx.vb" Inherits="mipi.frmDepartamento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
              <% If txtCodigo.Text <> "" Then %>
            <div class="header">
                <h2>Modificar Departamento</h2>
            </div>
             <%Else %>
            <div class="header">
                <h2>Crear Departamento</h2>
            </div>
              <%End If%>

            <div class="body">

                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label>Código Departamento</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label>Nombre del Departamento</label>
                    <asp:TextBox ID="txtNombreDepartamento" required = "required" runat="server" CssClass="form-control" />
                </div>

            
                <br />
                <div class="form-group">
                    <label >ID Externo</label>
                    <asp:TextBox  ID="txtIdExterno" runat="server" CssClass="form-control" />
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
                <asp:GridView ID="GridView1" runat="server"  ShowSelectButton="True" AutoGenerateColumns="False" DataKeyNames="id_departamento,nombre_departamento,id_departamento_externo" CssClass="table table-hover table-custom spacing5">
                    <Columns>
                         <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_departamento" HeaderText="ID DEPARTAMENTO" InsertVisible="False" ReadOnly="True" SortExpression="id_departamento" />
                        <asp:BoundField DataField="nombre_departamento" HeaderText="DEPARTAMENTO" SortExpression="nombre_departamento" />
                        <asp:BoundField DataField="id_departamento_externo" HeaderText="ID EXTERNO" SortExpression="id_departamento_externo" />
                    </Columns>
                </asp:GridView>
                
                  
                <!-- FIN DE LA TABLA-->
            </div>
        </div>

    </form>
</asp:Content>