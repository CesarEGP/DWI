<%@page import="jugueteria.Venta"%>
<%@page import="jugueteria.DAOVenta"%>
<%@page import="jugueteria.DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.tailwindcss.com"></script> 
<script src="https://kit.fontawesome.com/880584a1df.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="src/styles.css">
<title>Tabla Venta</title>
</head>

<body class="flex flex-col">
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
	<br>
	<br />
	<%
	DAOVenta dao = new DAOVenta();
	List<Venta> lst = dao.consultarTodos();

	%>

	<table border="1"
		class="text-center border-2 border-sky-500 w-[50vw] mx-auto font-bold">
		<tr>
			<td>Id_Venta</td>
			<td>estado</td>
			<td>metodo</td>
			<td>Id_Usuario</td>
		</tr>

		<%
		for (Venta u : lst) {
		%>

		<tr>
			<td class="border border-sky-500
border border-sky-500"><%=u.getIdVenta()%>
			</td>
			<td class="border border-sky-500
border border-sky-500"><%=u.getEstado()%>
			</td>
			<td class="border border-sky-500			
border border-sky-500"><%=u.getMetodo()%>
			</td>
			<td class="border border-sky-500
border border-sky-500"><%=u.getIdUsuario()%>
			</td>
		</tr>
		<%
		}
		%>
	</table>
	
</main>
<script src="src/func.js"></script>  	
</body>

</html>