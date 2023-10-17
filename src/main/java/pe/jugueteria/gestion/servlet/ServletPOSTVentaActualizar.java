package pe.jugueteria.gestion.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.jugueteria.gestion.ServicioGestionVentas;
import pe.jugueteria.gestios.dto.DTOVentaActualizar;


@WebServlet("/ServletPOSTVentaActualizar")
public class ServletPOSTVentaActualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/*se inyecta el ejb */
	@Inject
	private ServicioGestionVentas servicio;
       
    
    public ServletPOSTVentaActualizar() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Venta Actualizada");
		String id_venta = request.getParameter("id_venta");
		String estado = request.getParameter("estado");
		String metodo = request.getParameter("metodo");
		String comentario = request.getParameter("comentario");
		DTOVentaActualizar dto = new DTOVentaActualizar();
		dto.setId_venta(id_venta);
		dto.setEstado(estado);
		dto.setMetodo(metodo);
		dto.setComentario(comentario);
		servicio.actualizarVenta(dto);
		request.getRequestDispatcher("ventas.jsp").forward(request, response);	
	}

}
