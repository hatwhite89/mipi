<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmReporteDepartamental.aspx.vb" Inherits="mipi.frmReporteDepartamental" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
             <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
        <section style="background:#4267b2;color:white;" class="container-fluid">
<h2 class="text-center">REPORTE DEPARTARMENTAL </h2>
            <br />
        </section>
        <div style="background:white;height:2px;">
      
      </div>
        <div style="background:#00b8e1; " class="row">
          
            <div class="col-md-3">
             
                    <label  style="color:white;"> *Seleccione un departamento</label>


          
                </div>
             <div class="col-md-3">
             

                <asp:DropDownList AutoPostBack="true" CssClass="btn btn-primary dropdown-toggle " ID="DropDownListDepartamentos" runat="server"></asp:DropDownList>
                  </div>
            <div class="col-md-3">
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Generar" />
                  </div>
             <div class="col-md-3">
                     <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger pull-right" Text="Regresar " />
                 </div>
        </div>
 <div>
             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="mipi.mipiDataSetTableAdapters.ReporteDetpartamentalTableAdapter">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="1" Name="id_departamento" Type="String" />
                 </SelectParameters>
             </asp:ObjectDataSource>
 
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1127px" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" style="margin-top: 55px" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" DocumentMapWidth="0px">
            <LocalReport ReportPath="Report1.rdlc">
            </LocalReport>



        </rsweb:ReportViewer>
 </div>
    </form>
</body>
</html>
