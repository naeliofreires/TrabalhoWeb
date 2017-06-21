package iseries.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity(name="series")
public class Serie {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotNull
	private String nome;
	@NotNull
	private String genero;
	@NotNull
	private String sinopse;
	@NotNull
	private String ano;
	
	// serie tem várias temporadas
	@OneToMany
	(mappedBy = "serie", targetEntity = Temporada.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Temporada> temporadas;
	 
	public Serie() {}

	public Serie(Integer id) {
		super();
		this.id = id;
	}

	public Serie(Integer id, String nome, String genero, String sinopse, String ano, List<Temporada> temporadas) {
		super();
		this.id = id;
		this.nome = nome;
		this.genero = genero;
		this.sinopse = sinopse;
		this.ano = ano;
		this.temporadas = temporadas;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	public List<Temporada> getTemporadas() {
		return temporadas;
	}

	public void setTemporadas(List<Temporada> temporadas) {
		this.temporadas = temporadas;
	}
	
}
