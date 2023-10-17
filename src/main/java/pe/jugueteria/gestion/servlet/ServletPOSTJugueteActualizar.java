package pe.jugueteria.gestion.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.jugueteria.gestion.ServicioGestionJuguetes;
import pe.jugueteria.gestios.dto.DTOJugueteActualizar;


@WebServlet("/ServletPOSTJugueteActualizar")
public class ServletPOSTJugueteActualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*se inyecta el ejb */
	@Inject
	private ServicioGestionJuguetes servicio;  

    public ServletPOSTJugueteActualizar() {
        super();        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Juguete Actualizado");
		String id = request.getParameter("id");		
		String descripcion = request.getParameter("descripcion");
		String precio = request.getParameter("precio");
		String cantidad = request.getParameter("cantidad");
		String ruta = request.getParameter("ruta");
		String categoria = request.getParameter("categoria");
		DTOJugueteActualizar dto = new DTOJugueteActualizar();
		dto.setId(id);
		dto.setDescripcion(descripcion);
		dto.setPrecio(Double.parseDouble(precio));
		dto.setCantidad(Integer.parseInt(cantidad));
		dto.setImg(ruta);
		dto.setId_cat(Integer.parseInt(categoria));
		servicio.actualizarJuguete(dto);
		request.getRequestDispatcher("juguetes.jsp").forward(request, response);	
	}

}
