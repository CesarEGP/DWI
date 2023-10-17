package pe.jugueteria.gestion;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import jugueteria.DAOVenta;
import pe.jugueteria.gestios.dto.DTOVentaActualizar;
import pe.jugueteria.gestios.dto.DTOVentaNuevo;


@Stateless
@LocalBean
public class ServicioGestionVentas {

   
    public ServicioGestionVentas() {
        // TODO Auto-generated constructor stub
    }
    
    //metodo para registrar
    public String registrarVentaNuevo(DTOVentaNuevo dto) {
    	DAOVenta dao = new DAOVenta();
    	dao.insertarVenta(dto);
    	return dto.getId_usuario();
    }
    
    //metodo para actualizar
    public String actualizarVenta(DTOVentaActualizar dto) {
    	DAOVenta dao = new DAOVenta();
    	dao.actualizarsVenta(dto);
    	return dto.getId_venta();
    }

}
