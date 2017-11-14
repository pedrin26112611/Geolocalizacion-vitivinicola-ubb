package com.vitivinicola.proyecto.model;
import java.lang.annotation.Documented;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.transaction.Transactional;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jmx.export.annotation.ManagedNotifications;

@Entity
@Table(name="viña")
public class Vinias {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_viña")
	private int id;
	
	@NotEmpty
	@Size(min=3, max=45)
	@Column(name = "name", nullable = false)
	private String name;

	@NotEmpty
	@Column(name = "rut", nullable = false)
	private String rut ;

	@NotEmpty
	@Size(min=3, max=25)
	@Column(name = "comuna", nullable = false)
	private String comuna;
	
	@NotEmpty
	@Size(min=3, max=25)
	@Column(name = "ciudad", nullable = false)
	private String ciudad;
	
	@NotEmpty
	@Size(min=3, max=40)
	@Column(name = "direccion", nullable = false)
	private String direccion;
	
	@NotNull
	@Column(name = "latitud", nullable = false)
	private Double latitud;
	
	@NotNull
	@Column(name = "longitud", nullable = false)
	private Double longitud;
	
	@NotEmpty
	@Size(min=3, max=20)
	@Column(name = "variedad", nullable = false)
	private String variedad;
	
	@NotEmpty
	@Size(min=3, max=320)
	@Column(name = "descripcion", nullable = false)
	private String descripcion;
	/*
	@NotEmpty
	@Size(max=12)
	@Column(name = "telefono", nullable = false)
	private String telefono;*/

	@NotEmpty
	@Email(message = "Ingrese una dirección de email valida")
	@Column(name = "email", nullable = false)
	private String email;

	/*@NotEmpty
	@ManyToOne(optional = false)
    @JoinColumn(name = "USER_ID")
	@Column(name = "id_vinias", nullable = false)*/
	
	/*@ManyToOne(optional = false)
    @JoinColumn(name = "USER_ID")*/
	@ManyToOne
	@JoinColumn(name="user_id")
    private User cliente;
	
	public Vinias() {}
	
	public User getCliente() {
		return cliente;
	}

	public void setCliente(User cliente) {
		this.cliente = cliente;
	}

	public int getId() {
		return id;
	}
	

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Double getLatitud() {
		return latitud;
	}

	public void setLatitud(Double latitud) {
		this.latitud = latitud;
	}

	public Double getLongitud() {
		return longitud;
	}

	public void setLongitud(Double longitud) {
		this.longitud = longitud;
	}

	public String getVariedad() {
		return variedad;
	}

	public void setVariedad(String variedad) {
		this.variedad = variedad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
/*
	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
*/
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
