package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jugueteria.Usuario;
import jugueteria.DAO;

public class DAOUsuario  extends DAO{
	public List<Usuario> consultarTodos() {
		List<Usuario> lst = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario, nombres FROM usuarios";
		Connection cnx = crearCnx();
		try {
			PreparedStatement pstm = cnx.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Usuario u = new Usuario();
				u.setId(rs.getString(1));
				u.setNombres(rs.getString(2));
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
}
