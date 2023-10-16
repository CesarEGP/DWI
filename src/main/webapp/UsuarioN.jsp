<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Nuevo Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/stylesA.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <div class="container">
            <h2>Nuevo Usuario</h2>
            <form action="ServletPOSTUsuarioNuevo" method="post">
              <input type="text" class="form-control" placeholder="Nombre" name="name">
              <input type="text" class="form-control" placeholder="Apellido" name="lastname">
              <input type="text" class="form-control" placeholder="Telefono" name="phone">
              <input type="text" class="form-control" placeholder="Dirección" name="place">
              <input type="email" class="form-control" placeholder="Correo" name="email">
              <input type="text" class="form-control" placeholder="Contraseña" name="password">
              <input type="text" class="form-control" placeholder="Rol" name="type">
              <br>
              <input type="submit" value="Nuevo">
            </form>
          </div>
        
          <script>
            function cerrarFormulario() {
            var confirmacion = confirm("Desea agregar este Usuario");
            if (confirmacion) {
            alert("Datos guardados");
            window.close();
                 }
            }
          </script>

    </body>    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    
</html>