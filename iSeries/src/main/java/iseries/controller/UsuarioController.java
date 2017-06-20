package iseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import iseries.model.Usuario;
import iseries.repository.UsuarioRepository;

@Controller
public class UsuarioController {

	@Autowired
	UsuarioRepository userRepo;
	
	@RequestMapping("cadastro")
	String telaCadastro(){
		return "/user/cadastro";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	String addUsuario(Usuario usuario){
		userRepo.save(usuario);
		return "redirect:/";
	}
}
