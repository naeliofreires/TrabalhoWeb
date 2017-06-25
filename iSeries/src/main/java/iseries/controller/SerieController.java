package iseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import iseries.model.Serie;
import iseries.repository.SerieRepository;

@Controller
public class SerieController {

	
	@Autowired
	SerieRepository serieRepo;
	
	@RequestMapping(value = "cadastraSerie", method = RequestMethod.POST)
	String cadastraSerie(Serie serie){
		serieRepo.save(serie);
		return "redirect:listaSeries";
	}
	
	@RequestMapping(value = "viewSerie", method = RequestMethod.GET)
	String viewSerie(Serie serie, Model model){
		
		Serie serieX = serieRepo.findOne(serie.getId());
		
		model.addAttribute("serie", serieX);
		
		return "/adm/edit-serie";
	}
}
