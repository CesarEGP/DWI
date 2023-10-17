package pe.jugueteria.gestion;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import jugueteria.DAOJuguete;
import pe.jugueteria.gestios.dto.DTOJugueteActualizar;
import pe.jugueteria.gestios.dto.DTOJugueteNuevo;



@Stateless
@LocalBean
public class ServicioGestionJuguetes {
  
    public ServicioGestionJuguetes() {
        // TODO Auto-generated constructor stub
    }
    
    //metodo para nuevos juguetes
    public String registrarJugueteNuevo(DTOJugueteNuevo dto) {
    	DAOJuguete dao = new DAOJuguete();
    	dao.insertarJuguete(dto);
    	return dto.getId();
    }
    
  //metodo para actualizar juguetes
    public String actualizarJuguete(DTOJugueteActualizar dto) {
    	DAOJuguete dao = new DAOJuguete();
    	dao.actualizarJuguete(dto);
    	return dto.getDescripcion();
    }

}
