<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmLogin.aspx.vb" Inherits="mipi.frmLogin" %>

<!doctype html>
<html lang="en">

<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bienvenido</title>

  

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <style>




/* The Modal (background) */
.modal2 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content2 {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close2 {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close2:hover,
.close2:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
    <script>
   function findGetParameter(parameterName) {
            var result = null,
                tmp = [];
            location.search
                .substr(1)
                .split("&")
                .forEach(function (item) {
                    tmp = item.split("=");
                    if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
                });
            return result;
        }

        if (findGetParameter('r') === '1') {
            function showModal() {

                document.getElementById('myModal').style.display = 'block';
                var texto = document.getElementById('textoFlag');
                texto.innerText = "Ha ocurrido un error, revise sus credenciales";
            }

             function CloseModal() {
                document.getElementById('myModal').style.display = 'none';
              
            }
        }
    </script>

       <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</head>

<body class="font-montserrat"  onload="javascript:showModal();" 
<!-- Page Loader -->
  
      <div id="myModal" class="modal2">
 <!-- Modal content -->
        <div class="modal-content2">
            <span class="close2" onclick="CloseModal()">&times;</span>
            <p class="text-center" id="textoFlag">Se ha registrado exitosamente</p>
        </div>
    </div>
    <div  style="background:white;">
        <div class="row">

            <div class="col-md-4"><img src="../Content/gobierno.jpg" /></div>
              <div class="col-md-4"></div>
              <div class="col-md-4"><img src="../Content/sedis.jpg" /></div>
        </div>
  
    </div>
<div class="auth-main "   style="background-image: url(../Content/1920.png);  height: 100%; background-position: center; background-repeat: no-repeat; background-size:cover;">

    <div class="auth_div ">
        <div class="">
            <a class="navbar-brand" href="javascript:void(0);"><img src="../Content/imagenes/mipi.png" height="50"   class="d-inline-block align-top mr-2" alt=""></a>
        <br />
        </div>
        <div class="card">
            <div class="body">
                <p class="lead" style="color:#0069d9;">Ingrese a su cuenta</p>
                <br />
             <form runat="server">
                    <div class="form-group">
                        <label for="signin-email" class="control-label sr-only">Usuario</label>
                        <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="form-control round"  placeholder="Ingrese usuario" style="border-color:#0069d9;"/>
                       
                    </div>
                    <div class="form-group">
                        <label for="signin-password" class="control-label sr-only">Password</label>
                         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control round"  placeholder="Ingrese password" style="border-color:#0069d9;"/>
                     
                      
                    </div>
                    <div class="form-group clearfix">
                     							
                    </div>
                          <asp:Button type="submit" ID="btnLogin" Text="LOGIN" runat="server" CssClass="btn btn-primary btn-round btn-block" />
  
                
                </form>
               
            </div>
        </div>
          <br />
                      <br />
                     <br />
                     <br />
                     <br />
                 <br />
                      <br />
                     <br />
                   
    </div>
  
  

</div>
      
<script src="/Content/html/assets/bundles/libscripts.bundle.js"></script>    
<script src="/Content/html/assets/bundles/vendorscripts.bundle.js"></script>
<script src="/Content/html/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>
