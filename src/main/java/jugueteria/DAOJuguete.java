package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jugueteria.Juguete;
import jugueteria.DAO;

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
}
