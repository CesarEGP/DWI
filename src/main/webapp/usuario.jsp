<%@page import="jugueteria.Juguete"%>
<%@page import="jugueteria.DAOJuguete"%>
<%@page import="jugueteria.Usuario"%>
<%@page import="jugueteria.DAOUsuario"%>
<%@page import="java.util.List"%>
<%@page import="jugueteria.DAO"%>
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
        <title>Administrador</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark-black">
            <a class="navbar-brand ps-3 text-white text-center" href="index.jsp"style="font-style: italic;" >Jugueteria TOYS</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 text-white" id="sidebarToggle" href="#!"><i class="fas fa-bars" ></i></button>
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0 text-white">
     
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown text-white ">
                    <a class="nav-link dropdown-toggle text-white" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end text-white" aria-labelledby="navbarDropdown"> 
                    <li><a class="dropdown-item" href="#!">Cerrar</a></li>
                    </ul>
                </li>
            </ul>
            </form>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">                                                  
                          <br> 
                            <a class="nav-link text-white" href="usuario.jsp">
                                <div class="sb-nav-link-icon text-white"><i class="fas fa-book-open"></i></div>
                                Usuarios
                            </a>
                            <div class="collapse " id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">                          
                            </div>                        
                            <a class="nav-link text-white" href="ventas.jsp">
                                <div class="sb-nav-link-icon text-white"><i class="fas fa-table"></i></div>
                                Ventas
                            </a>
                            <a class="nav-link text-white" href="juguetes.jsp">
                                <div class="sb-nav-link-icon text-white "><i class="fas fa-chart-area"></i></div>
                                Juguetes
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <div class="container">
                    <form class="rounded-form">
                        <br>
                        <h1>Usuarios</h1>
                        <br>
                        <div class="form-group">
                            <button type="submit" onclick="abrirVentana1()">Nuevo</button>
                            <button type="submithtml" onclick="abrirVentana2()">Actualizar</button>
                        </div>
                                 
                    </form>
	<%
	DAOUsuario dao = new DAOUsuario();
	List<Usuario> lst = dao.consultarTodos();	
	%>
	<table border="1"
		class="text-center border-2 border-sky-500 w-[50vw] mx-auto font-bold">
		<tr>
			<td>Id_Usuario</td>
			<td>Nombres</td>
			<td>Apellidos</td>
			<td>Telefono</td>
			<td>direccion</td>
			<td>Correo</td>
			<td>Contraseña</td>
			<td>Id_Rol</td>
		</tr>
							<%
							for (Usuario u : lst) {
							%>					
							<tr>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getId()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getNombres()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getApellidos()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getTelefono()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getDireccion()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getCorreo()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getContraseña()%>
								</td>
								<td class="border border-sky-500
					border border-sky-500"><%=u.getId_rol()%>
								</td>
							</tr>
							<%
							}
							%>
						</table>
                </div>                
            </div>
            <script>
                function abrirVentana1() {
                  var nuevaVentana = window.open('UsuarioN.jsp');
                }
                function abrirVentana2() {
                  var nuevaVentana = window.open('UsuarioA.jsp');
                }
              </script>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
<html>
