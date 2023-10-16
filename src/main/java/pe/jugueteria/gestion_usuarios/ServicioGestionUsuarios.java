package pe.jugueteria.gestion_usuarios;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import jugueteria.DAOUsuario;
import pe.jugueteria.gestios_usuarios.dto.DTOUsuarioActualizar;
import pe.jugueteria.gestios_usuarios.dto.DTOUsuarioNuevo;


@Stateless
@LocalBean
public class ServicioGestionUsuarios {


    public ServicioGestionUsuarios() {
        // TODO Auto-generated constructor stub
    }
    
    //metodo para registrar
    public String registrarUsuarioNuevo(DTOUsuarioNuevo dto) {
    	DAOUsuario dao = new DAOUsuario();
    	dao.insertarUsuario(dto);
    	return dto.getId();
    }
    
    //metodo para actualizar
    public String actualizarUsuario(DTOUsuarioActualizar dto) {
    	DAOUsuario dao = new DAOUsuario();
    	dao.actualizarUsuario(dto);
    	return dto.getCorreo();
    }
}
