package pe.jugueteria.gestion.servlet;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.jugueteria.gestion.ServicioGestionUsuarios;
import pe.jugueteria.gestios.dto.DTOUsuarioNuevo;




@WebServlet("/ServletPOSTUsuarioNuevo")
public class ServletPOSTUsuarioNuevo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	/*se inyecta el ejb */
	@Inject
	private ServicioGestionUsuarios servicio;
	

    public ServletPOSTUsuarioNuevo() {
        super();
    }    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println("Usuario Nuevo");		
		String nombre = request.getParameter("name");
		String apellido = request.getParameter("lastname");
		String telefono = request.getParameter("phone");
		String direccion = request.getParameter("place");
		String correo  = request.getParameter("email");
		String contraseña = request.getParameter("password");
		String rol = request.getParameter("type");
		DTOUsuarioNuevo dto = new DTOUsuarioNuevo();
		dto.setNombres(nombre);
		dto.setApellidos(apellido);
		dto.setTelefono(Integer.parseInt(telefono));
		dto.setDireccion(direccion);
		dto.setCorreo(correo);
		dto.setContraseña(contraseña);
		dto.setId_rol(Integer.parseInt(rol));	
		servicio.registrarUsuarioNuevo(dto);		
		request.getRequestDispatcher("usuario.jsp").forward(request, response);	
	}

}
