package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import pe.jugueteria.gestios.dto.DTOVentaActualizar;
import pe.jugueteria.gestios.dto.DTOVentaNuevo;


public class DAOVenta extends DAO {
	public List<Venta> consultarTodos() {
		List<Venta> lst = new ArrayList<Venta>();
		String sql = "SELECT * FROM ventas";
		Connection cnx = crearCnx();
		try {
			PreparedStatement pstm = cnx.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Venta u = new Venta();
				u.setIdVenta(rs.getString(1));
				u.setEstado(rs.getString(2));
				u.setMetodo(rs.getString(3));
				u.setIdUsuario(rs.getString(4));
				u.setComentario(rs.getString(5));				
				lst.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				cnx.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return lst;
	}
	
	public void insertarVenta(DTOVentaNuevo dto) {	    
	    String sql = "INSERT INTO public.ventas(\r\n"
	    		+ "			id_venta, estado, metodo, idusuario, comentarios)\r\n"
	    		+ "			VALUES (uuid_generate_v4(), ?, ?, ?, ?);";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getEstado());
	        pstm.setString(2, dto.getMetodo());
	        pstm.setObject(3, UUID.fromString(dto.getId_usuario()));
	        pstm.setString(4, dto.getComentario());	        
	        pstm.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            cnx.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	public void actualizarsVenta(DTOVentaActualizar dto) {	    
	    String sql = "UPDATE public.ventas\r\n"
	    		+ "	SET  estado=?, metodo=?, comentarios=?\r\n"
	    		+ "	WHERE id_venta=?;";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getEstado());
	        pstm.setString(2, dto.getMetodo());
	        pstm.setString(3, dto.getComentario());	    
	        pstm.setObject(4, UUID.fromString(dto.getId_venta()));	    
	        pstm.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            cnx.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}
}
