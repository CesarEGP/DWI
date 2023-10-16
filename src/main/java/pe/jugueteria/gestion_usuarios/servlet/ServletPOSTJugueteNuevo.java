package pe.jugueteria.gestion_usuarios.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.jugueteria.gestion_usuarios.ServicioGestionJuguetes;
import pe.jugueteria.gestios_usuarios.dto.DTOJugueteNuevo;


@WebServlet("/ServletPOSTJugueteNuevo")
public class ServletPOSTJugueteNuevo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/*se inyecta el ejb */
	@Inject
	private ServicioGestionJuguetes servicio;
       
    
    public ServletPOSTJugueteNuevo() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Juguete Nuevo");	
		String descripcion = request.getParameter("descripcion");
		String precio = request.getParameter("precio");
		String cantidad = request.getParameter("cantidad");
		String ruta = request.getParameter("ruta");
		String categoria = request.getParameter("categoria");
		DTOJugueteNuevo dto = new DTOJugueteNuevo();
		dto.setDescripcion(descripcion);
		dto.setPrecio(Double.parseDouble(precio));
		dto.setCantidad(Integer.parseInt(cantidad));
		dto.setImg(ruta);
		dto.setId_cat(Integer.parseInt(categoria));
		servicio.registrarJugueteNuevo(dto);
		request.getRequestDispatcher("juguetes.jsp").forward(request, response);	
	}

}
