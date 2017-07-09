package iseries.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import iseries.model.Serie;
import iseries.repository.SerieRepository;

@Controller
public class HomeController {

	@Autowired
	SerieRepository serieRepo;
	
	@RequestMapping("/")
	String home(){
		return "index";
	}
	
	// Página Inicial
	@RequestMapping("homeUsuario")
	String homeUsuario(HttpSession session){
		
		List<Serie> series = serieRepo.findAll();
		session.setAttribute("lista_series", series);
		
		return "/user/HomePage";
	}
}
