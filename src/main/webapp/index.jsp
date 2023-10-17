<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>   
    <script src="https://cdn.tailwindcss.com"></script> 
    <script src="https://kit.fontawesome.com/880584a1df.js" crossorigin="anonymous"></script>    
    <link rel="stylesheet" href="src/styles.css">
    <!-- <link rel="stylesheet" type="text/css" href="styles1.css">  -->
    
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
    <main>
        <div class="slides">
            <div class="slide slide-1">
                <img class="img-slide" src="https://realplaza.vtexassets.com/arquivos/ids/20644478/image-8443fb8b5ded46458b0dfb688381e0e2.jpg?v=637800313571170000" alt="">
            </div>
            <div class="slide slide-2">
                <img class="img-slide" src="https://pbs.twimg.com/media/FirM6PIXwAAROUg.jpg" alt="">
            </div>
            <div class="slide slide-3">
                <img class="img-slide" src="https://lemexico.mx/wp-content/uploads/2021/02/Senor-Cara-de-Papa.jpg" alt="">
            </div>
        </div>
        <center>
            <table>
                <div class="product-grid">
                    <tr>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B1.jpg" width="150" height="200">
        
                                </div>
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Peluche Stich</p>
                                    <p class="product-grid__price">S/25</p>
                                    <p>Peluche de Stitch es un peluche</p>
                                    <p> muy suave y fino al tacto</p>
                                    <p>antialérgico e hipoalergénico</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
        
                        </td>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B2.webp" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">BARBIE Play Doctor</p>
                                    <p class="product-grid__price">S/30</p>
                                    <p>Fomenta el juego de roles </p>
                                    <p>en las pequeñas Podrán </p>
                                    <p>imaginar historias</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
                        </td>
        
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B3.jpg" width="150" height="200">
        
                                </div>
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Hot Wheels Vehículo</p>
                                    <p class="product-grid__price">S/70</p>
                                    <p>Acelera y obtén una </p>
                                    <p>colección Hot Wheels</p>
                                    <p>incluye cinco vehículos</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
        
                        </td>
                    </tr>
                    <tr>
                        <td>
        
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B4.webp" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Dormitorio de Muñecas</p>
                                    <p class="product-grid__price">S/30</p>
                                    <p>mueble con 3 cajones,</p>
                                    <p>cama plegable y</p>
                                    <p>tamaño de 28x18x40 cm</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito </a>
                                </div>
                        </td>
        
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B5.webp" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Caja Registradora</p>
                                    <p class="product-grid__price">S/35</p>
                                    <p>Caja registradora de madera</p>
                                    <p>con accesorios para jugar</p>
                                    <p>Ancho 18 cm y Alto 12,5 cm</p>
        
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
                        </td>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B6.webp" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Set Helados</p>
                                    <p class="product-grid__price">S/40</p>
                                    <p>Podrás crear distintas</p>
                                    <p>combinaciones de helado</p>
                                    <p>con esté set</p>
        
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B7.webp" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Triciclo Infantil </p>
                                    <p class="product-grid__price">S/250</p>
                                    <p>Triciclo infantil</p>
                                    <p>fomenta el equilibrio </p>
                                    <p>y la coordinacion</p>
        
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
                        </td>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B8.jpg" width="250" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Muñeca Berta</p>
                                    <p class="product-grid__price">S/40</p>
                                    <p>pelo rubio con 2 coletas</p>
                                    <p>, vestido blanco</p>
                                    <p>, gorro y leotardos</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
        
                        </td>
                        <td>
                            <div class="product-grid__item">
                                <div class="product-grid__imagen">
        
                                    <img src="src/img/B9.jpeg" width="150" height="200">
        
                                </div>
        
                                <div class="product-grid__info">
                                    <p class="product-grid__name">Peluche Winnie Pooh</p>
                                    <p class="product-grid__price">S/85</p>
                                    <p>Detalles bordados</p>
                                    <p> y logo "Pooh"</p>
                                    <p>peluche antialergico</p>
                                    <a href="#" class="product-grid__btn btn-default" data-btn-action="add-btn-cart"
                                        data-modal="#jsModalCarrito">Agregar al carrito</a>
                                </div>
                        </td>
                    </tr>
                </div>
            </table>
    </center>        
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
                <p>Nos ubicamos en: C. San Camilo 333, Cercado De Arequipa 04001</p>
			<p>Somos una tienda de juguetes dedicada a brindar diversión y alegría a niños de todas las edades. Nuestros productos están cuidadosamente seleccionados para garantizar calidad y seguridad en cada juguete que ofrecemos.</p>
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