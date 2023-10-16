package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import pe.jugueteria.gestios_usuarios.dto.DTOJugueteActualizar;
import pe.jugueteria.gestios_usuarios.dto.DTOJugueteNuevo;



public class DAOJuguete  extends DAO{
	public List<Juguete> consultarTodos() {
		List<Juguete> lst = new ArrayList<Juguete>();
		String sql = "SELECT * FROM juguetes";
		Connection cnx = crearCnx();
		try {
			PreparedStatement pstm = cnx.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Juguete u = new Juguete();
				u.setId(rs.getString(1));
				u.setDescripcion(rs.getString(2));
				u.setPrecioU(rs.getDouble(3));
				u.setCantidad(rs.getInt(4));
				u.setImg(rs.getString(5));
				u.setIdcateg(rs.getInt(6));
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
	
	
	public void insertarJuguete(DTOJugueteNuevo dto) {
	    List<Juguete> lst = new ArrayList<Juguete>();
	    String sql = "INSERT INTO public.juguetes(\r\n"
	    		+ "	id_juguete, descripcion, preciou, cantidad, img, idcateg)\r\n"
	    		+ "	VALUES (uuid_generate_v4(), ?, ?, ?, ?, ?);";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getDescripcion());
	        pstm.setDouble(2, dto.getPrecio());
	        pstm.setInt(3, dto.getCantidad());
	        pstm.setString(4, dto.getImg());
	        pstm.setInt(5, dto.getId_cat());	        
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
	
	public void actualizarJuguete(DTOJugueteActualizar dto) {
	    List<Juguete> lst = new ArrayList<Juguete>();
	    String sql = "UPDATE public.juguetes\r\n"
	    		+ "	SET  descripcion=?, preciou=?, cantidad=?, img=?, idcateg=?\r\n"
	    		+ "	WHERE id_juguete=?;";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getDescripcion());
	        pstm.setDouble(2, dto.getPrecio());
	        pstm.setInt(3, dto.getCantidad());
	        pstm.setString(4, dto.getImg());
	        pstm.setInt(5, dto.getId_cat());	   
	        pstm.setObject(6,UUID.fromString(dto.getId()));
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
