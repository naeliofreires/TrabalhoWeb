package iseries.controller;

import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(value = "efetuarCadastro", method = RequestMethod.POST)
	String addUsuario(Usuario usuario){
		userRepo.save(usuario);
		return "redirect:/";
	}
	
	@RequestMapping("myProfile")
	String myProfile(){
		return "/user/Profile";
		
	}
	
	// Adicionando Serie Na Lista Pessoal
	@RequestMapping(value = "addInMyList", method = RequestMethod.GET)
	String addMyList(@RequestParam(value="idUser", required=true) Integer id_user, 
			@RequestParam(value="idSerie", required=true) Integer nova_serie,
			HttpSession session){
				
		Usuario user = this.userRepo.findOne(id_user);
		
		Collection<Serie> series = new ArrayList<Serie>();
		
		for(Serie s : user.getMinhas_series())
			series.add(this.serieRepo.findOne(s.getId()));
		
		series.add(this.serieRepo.findOne(nova_serie));
		
		user.setMinhas_series(series);
		
		this.userRepo.save(user);
		
		session.setAttribute("usuario", this.userRepo.getOne(id_user));
		
		return "redirect:homeUsuario";
	}
	
	// Visualizando Series Na Lista Pessoal
	@RequestMapping("mySeries")
	String lookMySeries(HttpSession session, Model model){
		
		Usuario user = (Usuario) session.getAttribute("usuario");
		
		user = this.userRepo.findOne(user.getId());
		
		model.addAttribute("usuario", user);
		
		return "/user/minhas-series";
	}
	
	// Removendo Serie da Lista Pessoal
	@RequestMapping(value = "removeSerieMyList", method = RequestMethod.GET)
	String removeSerieMyList(HttpSession session ,@RequestParam(value="ids", required=true) Integer ids){
		
		Usuario user = (Usuario) session.getAttribute("usuario");
		user = this.userRepo.findOne(user.getId());
		Serie serie = this.serieRepo.findOne(ids); // Serie que vai ser removida
		
		Collection<Serie> series = new ArrayList<Serie>();
		
		for(Serie s : user.getMinhas_series())
			series.add(this.serieRepo.findOne(s.getId()));
		
		series.remove(serie);
		
		user.setMinhas_series(series);
		
		this.userRepo.save(user);
		
		return "redirect:mySeries";
	}

}
