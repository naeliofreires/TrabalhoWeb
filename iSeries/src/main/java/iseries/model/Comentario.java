package iseries.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="COMENTARIO")
public class Comentario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID_COMENTARIO")
	private Integer id;

	@Column(name="ID_AUTOR", nullable=false, insertable=false, updatable=false)
	private Integer id_user;

	@Column(name="ID_SERIE", nullable=false, insertable=false, updatable=false)
	private Integer id_serie;

	@Column(name="TEXTO", nullable=false)
	private String texto;

	@Column(name="DATA",nullable=false)
	private Calendar data;

	@ManyToOne(optional=false)
	@JoinColumn(name="ID_AUTOR", referencedColumnName="ID_USUARIO")
    private Usuario usuario;
	
	@ManyToOne(optional=false)
	@JoinColumn(name="ID_SERIE", referencedColumnName="ID_SERIE")
    private Serie serie;
	
	public Comentario() {}

	public Comentario(String texto) {
		this.texto = texto;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId_user() {
		return id_user;
	}

	public void setId_user(Integer id_user) {
		this.id_user = id_user;
	}

	public Integer getId_serie() {
		return id_serie;
	}

	public void setId_serie(Integer id_serie) {
		this.id_serie = id_serie;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

}
