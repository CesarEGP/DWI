package jugueteria;

public class Juguete {
	private String id;
	private String descripcion;	
	private Double precioU;
	private int cantidad;
	private String img;	
	private int idcateg;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Double getPrecioU() {
		return precioU;
	}
	public void setPrecioU(Double precioU) {
		this.precioU = precioU;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getIdcateg() {
		return idcateg;
	}
	public void setIdcateg(int idcateg) {
		this.idcateg = idcateg;
	}
	
	
}


