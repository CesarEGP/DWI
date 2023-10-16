package jugueteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


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
