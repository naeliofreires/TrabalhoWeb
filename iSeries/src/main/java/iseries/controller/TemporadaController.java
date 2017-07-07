package iseries.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import iseries.model.Serie;
import iseries.model.Temporada;
import iseries.repository.TemporadaRepository;

@Controller
public class TemporadaController {

	@Autowired
	TemporadaRepository tempRepo;
	
	@RequestMapping(value = "cadastraTemporada", method = RequestMethod.POST)
	String addTemporada(Temporada temporada, HttpSession session, @RequestParam(value="serie", required=true) Integer serie){
		
		temporada.setSerie(new Serie(serie));
		tempRepo.save(temporada);
		
		session.setAttribute("idx", serie);
		
		return "redirect:viewSerie";
	}
}
