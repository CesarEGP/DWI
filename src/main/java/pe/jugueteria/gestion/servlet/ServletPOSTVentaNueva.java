package pe.jugueteria.gestion.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.jugueteria.gestion.ServicioGestionVentas;
import pe.jugueteria.gestios.dto.DTOVentaNuevo;


@WebServlet("/ServletPOSTVentaNueva")
public class ServletPOSTVentaNueva extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/*se inyecta el ejb */
	@Inject
	private ServicioGestionVentas servicio;

    public ServletPOSTVentaNueva() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Venta Nueva");
		String id_usuario = request.getParameter("id_usuario");
		String estado = request.getParameter("estado");
		String metodo = request.getParameter("metodo");
		String comentario = request.getParameter("comentarios");
		DTOVentaNuevo dto = new DTOVentaNuevo();
		dto.setId_usuario(id_usuario);
		dto.setEstado(estado);
		dto.setMetodo(metodo);
		dto.setComentario(comentario);
		servicio.registrarVentaNuevo(dto);
		request.getRequestDispatcher("ventas.jsp").forward(request, response);	
	}

}
