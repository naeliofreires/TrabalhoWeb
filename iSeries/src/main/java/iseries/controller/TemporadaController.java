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
	String addTemporada(Temporada temporada, HttpSession session, @RequestParam(value="serie", required=true) Integer id_serie){
		
		temporada.setSerie(new Serie(id_serie));
		
		tempRepo.save(temporada);
		
		session.setAttribute("idx", id_serie);
		
		return "redirect:viewSerieII";
	}
	
	@RequestMapping(value = "deleteTemp")
	String deleteTemporada( HttpSession session, @RequestParam(value="id_tmp", required=true) Integer id_temporada, @RequestParam(value="id_serie", required=true) Integer id_serie){
		
		tempRepo.delete(id_temporada);
		session.setAttribute("idx", id_serie);
		
		return "redirect:viewSerieII";
	}

}
