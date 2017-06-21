package iseries.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity(name="temporadas")
public class Temporada {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotNull
	private String sinopse;
	
	// temporada tem uma unica serie
	@ManyToOne
	@JoinColumn(name="serie_id")
	private Serie serie;
	
	public Temporada() {}

	public Temporada(Integer id) {
		super();
		this.id = id;
	}

	public Temporada(Integer id, String sinopse, Serie serie) {
		super();
		this.id = id;
		this.sinopse = sinopse;
		this.serie = serie;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Serie getSerie() {
		return serie;
	}

	public void setSerie(Serie serie) {
		this.serie = serie;
	}

	public String getSinopse() {
		return sinopse;
	}


	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}
	
}
