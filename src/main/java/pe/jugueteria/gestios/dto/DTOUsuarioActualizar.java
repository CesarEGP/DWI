package pe.jugueteria.gestios.dto;

public class DTOUsuarioActualizar {
	//Atributos	
		private String id;
		private String nombres;
		private String apellidos;
		private int telefono;
		private String direccion;
		private String correo;
		private String contraseña;
		private int id_rol;
		
	//Getter and Setter
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getNombres() {
			return nombres;
		}
		public void setNombres(String nombres) {
			this.nombres = nombres;
		}
		public String getApellidos() {
			return apellidos;
		}
		public void setApellidos(String apellidos) {
			this.apellidos = apellidos;
		}
		public int getTelefono() {
			return telefono;
		}
		public void setTelefono(int telefono) {
			this.telefono = telefono;
		}
		public String getDireccion() {
			return direccion;
		}
		public void setDireccion(String direccion) {
			this.direccion = direccion;
		}
		public String getCorreo() {
			return correo;
		}
		public void setCorreo(String correo) {
			this.correo = correo;
		}
		public String getContraseña() {
			return contraseña;
		}
		public void setContraseña(String contraseña) {
			this.contraseña = contraseña;
		}
		public int getId_rol() {
			return id_rol;
		}
		public void setId_rol(int id_rol) {
			this.id_rol = id_rol;
		}
		
		
}
