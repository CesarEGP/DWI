package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.jugueteria.gestios.dto.DTOUsuarioActualizar;
import pe.jugueteria.gestios.dto.DTOUsuarioNuevo;


public class DAOUsuario  extends DAO{
	public List<Usuario> consultarTodos() {
		List<Usuario> lst = new ArrayList<Usuario>();
		String sql = "SELECT * FROM usuarios";
		Connection cnx = crearCnx();
		try {
			PreparedStatement pstm = cnx.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Usuario u = new Usuario();
				u.setId(rs.getString(1));
				u.setNombres(rs.getString(2));
				u.setApellidos(rs.getString(3));
				u.setTelefono(rs.getInt(4));
				u.setDireccion(rs.getString(5));
				u.setCorreo(rs.getString(6));
				u.setContraseña(rs.getString(7));
				u.setId_rol(rs.getInt(8));
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
	
	public void insertarUsuario(DTOUsuarioNuevo dto) {	    
	    String sql = "INSERT INTO public.usuarios(\r\n"
	            + "    id_usuario, nombres, apellidos, telefono, direccion, correo, \"contrase¤a\", idrol)\r\n"
	            + "    VALUES (uuid_generate_v4(), ?, ?, ?, ?, ?, ?, ?);";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getNombres());
	        pstm.setString(2, dto.getApellidos());
	        pstm.setInt(3, dto.getTelefono());
	        pstm.setString(4, dto.getDireccion());
	        pstm.setString(5, dto.getCorreo());
	        pstm.setString(6, dto.getContraseña());
	        pstm.setInt(7, dto.getId_rol());
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
	
	public void actualizarUsuario(DTOUsuarioActualizar dto) {	    
	    String sql = "UPDATE public.usuarios\r\n"
	    		+ "	SET  nombres=?, apellidos=?, telefono=?, direccion=?, correo=?, \"contrase¤a\"=?, idrol=?\r\n"
	    		+ "	WHERE correo = ?;";
	    Connection cnx = crearCnx();
	    try {
	        PreparedStatement pstm = cnx.prepareStatement(sql);
	        pstm.setString(1, dto.getNombres());
	        pstm.setString(2, dto.getApellidos());
	        pstm.setInt(3, dto.getTelefono());
	        pstm.setString(4, dto.getDireccion());
	        pstm.setString(5, dto.getCorreo());
	        pstm.setString(6, dto.getContraseña());
	        pstm.setInt(7, dto.getId_rol());
	        pstm.setString(8, dto.getCorreo());
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
