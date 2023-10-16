<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jugueteria.Usuario"%>
<%@page import="jugueteria.DAOUsuario"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://cdn.tailwindcss.com"></script> 
    <script src="https://kit.fontawesome.com/880584a1df.js" crossorigin="anonymous"></script>    
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <title>Bienvenido a mi Formulario</title>
</head>

<body>
    <header>
        <div class="flex flex-row bg-neutral-900
        h-[8vh] w-full justify-between sm:justify-around items-center">
            <div id="show" class="flex flex-row h-[14vw] w-[15vw] justify-around rounded-full sm:hidden">
                <button type="submit" class="w-full">                    
                        <i class="fa-solid fa-bars p-2" style="color: #ffffff;"></i>                    
                </button>
            </div>
            <div id="scroll" class="sm:flex flex-row h-full w-[50vw]  justify-around hidden sm:block">
                <button class="bg-cover p-[7px] text-xl flex h-auto w-auto rounded-[3vh] items-center
                justify-center text-white my-auto hover:scale-125 duration-300 ease-in-out hover:bg-white hover:text-black"><a href="index.jsp">Inicio</a></button>
                <button class="bg-cover p-[7px] text-xl flex h-auto w-auto rounded-[3vh] items-center
                justify-center text-white my-auto hover:scale-125 duration-300 ease-in-out hover:bg-white hover:text-black"><a href="product.jsp">Productos</a></button>
                <button id="about" class="bg-cover p-[7px] text-xl flex h-auto w-auto rounded-[3vh] items-center
                justify-center text-white my-auto hover:scale-125 duration-300 ease-in-out hover:bg-white hover:text-black">Nosotros</button>
            </div>
            <div class="flex flex-row h-full sm:w-[20vw] w-[25vw] justify-around mr-2 text-xl">
                <button type="submit" class="h-full w-full sm:hover:scale-150 duration-300 ease-in-out">                    
                    <a href="login.jsp" class="h-full w-full">    
                        <i class="fa-regular fa-user" style="color: #ffffff;"></i>
                    </a>
                </button>
                <button type="submit" class="h-full w-full sm:hover:scale-150 duration-300 ease-in-out">                    
                    <a href="cart.jsp" class="h-full w-full">                        
                        <i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i>                    
                    </a >
                </a>
                
            </div>
        </div>
    </header>
    <main >
    <%
		DAOUsuario dao = new DAOUsuario();
		List<Usuario> lst = dao.consultarTodos();	
	%>
        <div class="container-form register">
            <div class="information">
                <div class="info-childs">
                    <h2>Bienvenido</h2>
                    <p>Para unirte a nuestra comunidad por favor Inicia Sesión con tus datos</p>
                    <input type="button" value="Iniciar Sesión" id="sign-in">
                </div>
            </div>
            <div class="form-information">
                <div class="form-information-childs">
                    <h2>Crear una Cuenta</h2>
                    <div class="icons">
                        <i class='bx bxl-google'></i>
                        <i class='bx bxl-facebook'></i>
                        <i class='bx bxl-twitter' ></i>
                    </div>
                    <p>o usa tu email para registrarte</p>
                    <form class="form">
                        <label>
                            <i class='bx bx-user' ></i>
                            <input type="text" placeholder="Nombres">
                        </label>
                        <label>
                            <i class='bx bx-user' ></i>
                            <input type="text" placeholder="Apellidos">
                        </label>
                        <label>
                            <i class='bx bxs-phone'></i>
                            <input type="text" placeholder="telefono">
                        </label>
                        <label>
                            <i class='bx bx-map' ></i>
                            <input type="text" placeholder="direccion">
                        </label>
                        <label >
                            <i class='bx bx-envelope' ></i>
                            <input type="email" placeholder="Correo Electronico">
                        </label>
                        <label>
                            <i class='bx bx-lock-alt' ></i>
                            <input type="password" placeholder="Contraseña">
                        </label>
                        <input type="submit" value="Registrarse">
                    </form>
                </div>
            </div>
        </div>
    
    
    
    
    
    
        <div class="container-form login hide">
            <div class="information">
                <div class="info-childs">
                    <h2>¡¡Bienvenido nuevamente!!</h2>
                    <p>Para unirte a nuestra comunidad por favor Inicia Sesión con tus datos</p>
                    <input type="button" value="Registrarse" id="sign-up">
                </div>
            </div>
            <div class="form-information">
                <div class="form-information-childs">
                    <h2>Iniciar Sesión</h2>
                    <div class="icons">
                        <i class='bx bxl-google'></i>
                        <i class='bx bxl-facebook'></i>
                        <i class='bx bxl-twitter' ></i>
                    </div>
                    <p>o Iniciar Sesión con una cuenta</p>
                    <form class="form" action="AuthServlet" method="post">    				
                        <label >
                            <i class='bx bx-envelope' ></i>
                            <input type="email" placeholder="Correo Electronico" name="email">
                        </label>
                        <label>
                            <i class='bx bx-lock-alt' ></i>
                            <input type="password" placeholder="Contraseña" name="password">
                        </label>
                        <label id="checkbox-label">
                            <p>Guardar Contraseña</p>
                            <input type="checkbox" id="save-password">                            
                        </label>                        
                        <input type="submit" value="Iniciar Sesión">                       
                    </form>
                </div>
            </div>
        </div>
    </main>
    <footer id="footer" class="pie-pagina">
        <div class="grupo-1">
            <div class="box">
                <figure>
                    <a href="#">
                        <img src="imagenes/logo.jpg" alt="">
                    </a>
                </figure>
            </div>
            <div class="box">
                <h2>SOBRE NOSOTROS</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, ipsa?</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, ipsa?</p>
            </div>
            <div class="box">
                <h2>SIGUENOS</h2>
                <div class="red-social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>
                </div>
            </div>
        </div>
        <div class="grupo-2">
            <small>&copy; 2023<b> Jugueteria</b> - Todos los Derechos Reservados.</small>
        </div>
    </footer>
    <script src="src/func.js"></script>
</body>					
</html>