package iseries.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import iseries.model.Serie;
import iseries.model.Usuario;
import iseries.repository.SerieRepository;
import iseries.repository.UsuarioRepository;

@Controller
public class UsuarioController {

	@Autowired
	UsuarioRepository userRepo;
	
	@Autowired
	SerieRepository serieRepo;
	
	@RequestMapping("cadastro")
	String telaCadastro(){
		return "/user/cadastro";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	String addUsuario(Usuario usuario){
		userRepo.save(usuario);
		return "redirect:/";
	}
	
	@RequestMapping("homeUsuario")
	String homeUsuario(HttpSession session){
		
		List<Serie> series = serieRepo.findAll();
		session.setAttribute("lista_series", series);
		
		return "/user/home-user";
	}
}
