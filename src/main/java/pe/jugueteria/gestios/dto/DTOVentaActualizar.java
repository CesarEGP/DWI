package pe.jugueteria.gestios.dto;

public class DTOVentaActualizar {
	//Atributos
		String id_venta;
		String estado;
		String metodo;
		String comentario;
		
	//Getter and Setter	
		public String getId_venta() {
			return id_venta;
		}
		public void setId_venta(String id_venta) {
			this.id_venta = id_venta;
		}
		public String getEstado() {
			return estado;
		}
		public void setEstado(String estado) {
			this.estado = estado;
		}
		public String getMetodo() {
			return metodo;
		}
		public void setMetodo(String metodo) {
			this.metodo = metodo;
		}
		public String getComentario() {
			return comentario;
		}
		public void setComentario(String comentario) {
			this.comentario = comentario;
		}
		
						
}
