package pe.jugueteria.auth.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jugueteria.DAOUsuario;
import jugueteria.Usuario;

/**
 * Servlet implementation class AuthServlet
 */
@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        String password = request.getParameter("password");

        DAOUsuario dao = new DAOUsuario();
        List<Usuario> lst = dao.consultarTodos();

        boolean authenticated = false;
        int rol = 2;

        for (Usuario u : lst) {
            if (u.getCorreo().equals(email) && u.getContraseña().equals(password)) {
                authenticated = true;
                if(u.getId_rol()==1)
                rol = 1;                
                // establece una sesión para el usuario autenticado
                request.getSession().setAttribute("user", u);
                break;
            }
        }
        //si lo ingresado es correcto envia a la pagina administrador, sino a la pagina de error
        if (authenticated) {
        	if (rol == 1) {
        		request.getRequestDispatcher("usuario.jsp").forward(request, response);	
			}else {
				request.getRequestDispatcher("index.jsp").forward(request, response);	
			}        	
        } else {
        	request.getRequestDispatcher("cart.jsp?error=true").forward(request, response);            
        }
	}

}
