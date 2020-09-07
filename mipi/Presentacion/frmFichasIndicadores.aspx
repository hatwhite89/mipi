<%@ Page Language="vb"  MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="frmFichasIndicadores.aspx.vb" Inherits="mipi.frmFichasIndicadores" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>



<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>



        </form>
       

</asp:Content>