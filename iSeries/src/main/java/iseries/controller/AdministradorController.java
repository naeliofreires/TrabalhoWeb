package iseries.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import iseries.model.Serie;
import iseries.model.Temporada;
import iseries.model.Usuario;
import iseries.repository.SerieRepository;
import iseries.repository.TemporadaRepository;
import iseries.repository.UsuarioRepository;

@Controller
public class AdministradorController {

	@Autowired
	UsuarioRepository userRepo;
	
	@Autowired
	SerieRepository serieRepo;
	
	@Autowired
	TemporadaRepository tempoRepo;
	
	@RequestMapping("homeAdm")
	String homeAdm(){
		return "/adm/home-adm";
	}
	
	@RequestMapping("listaUsuarios")
	String listarUsuarios(Model model){
		
		List<Usuario> usuarios =  userRepo.findAll();
		
		model.addAttribute("lista_usuarios", usuarios);
		
		return "/adm/lista-usuarios";
	}
	
	@RequestMapping("listaSeries")
	String listarSeries(Model model){
		
		List<Serie> series = serieRepo.findAll();
		
		List<Temporada> temporadas = this.tempoRepo.findTemporadaOfSerie(1);
		
		model.addAttribute("lista_series", series);
		model.addAttribute("lista_temporadas", temporadas);
		
		return "/adm/lista-series";
	}
	
}
