<%@ Page Title="Municipio" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmMunicipio.aspx.vb" Inherits="mipi.frmMunicipio" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <div class="card">
       

            <div class="body">
                       <% If txtCodigo.Text <> "" Then %>
            <div class="header text-center">
                <h6>Modificar Municipio</h6>
            </div>
             <%Else %>
            <div class="header text-center">
                <h6>Crear Municipio</h6>
            </div>
              <%End If%>
                      <div class="btn-group-sm">

                    <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                    <br />
                </div>
                <% If txtCodigo.Text <> "" Then %>
                <div class="form-group">
                    <label style="color:orangered;">Código Municipio</label>
                    <asp:TextBox ID="txtCodigo" ReadOnly="true" runat="server" CssClass="form-control" />
                </div>
               

                <br>
                <%End If%>

                <div class="form-group">
                    <label style="color:orangered;" >*Nombre del Municipio</label>
                    <asp:TextBox ID="txtNombreMunicpio" required = "required" runat="server" CssClass="form-control" />
                </div>

            
                <br />
                <div class="form-group">
                    <label style="color:orangered;" >ID Externo</label>
                    <asp:TextBox   ID="txtIdExterno" runat="server" CssClass="form-control" />
                </div>

           
                   <div>
                    <p style="color: orangered;">*Seleccione un departamento</p>

                </div>
           
                         <div class="input-group mb-3">
                                <div class="input-group-prepend" style="background-color: aliceblue; color: white; font-weight: bold;">
                                    <label class="input-group-text" for="inputGroupSelect01" >Departamento</label>
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
                      <div class="header">
                    <h6 class="text-center ">LISTADO DE MUNICIPIOS </h6>

                    <div class="btn-group-sm">

                        <button type="button" class="btn btn-round btn-success  pull-right" data-toggle="modal" data-target=".Form-Wizard-modal">Instrucciones</button>
                        <br />
                    </div>
                </div>
                <!--tabla para actualizar -->
                <asp:GridView ID="GridView1" ShowSelectButton="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="id_municipio,nombre_municipio,id_municipio_externo,id_departamento,nombre_departamento"  CssClass="" AllowPaging="True" CellPadding="8" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                          <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="id_municipio" HeaderText="ID MUNICIPIO" InsertVisible="False" ReadOnly="True" SortExpression="id_municipio" />
                        <asp:BoundField DataField="nombre_municipio" HeaderText="MUNICIPIO" SortExpression="nombre_municipio" />
                        <asp:BoundField  DataField="id_municipio_externo" HeaderText="ID EXTERNO" SortExpression="id_municipio_externo" />
                        <asp:BoundField Visible="false" DataField="id_departamento" HeaderText="id_departamento" SortExpression="id_departamento" />
                      <asp:BoundField DataField="nombre_departamento" HeaderText="DEPARTAMENTO" SortExpression="nombre_departamento" />
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