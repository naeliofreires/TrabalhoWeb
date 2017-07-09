package iseries.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import iseries.model.Serie;
import iseries.model.Temporada;
import iseries.repository.SerieRepository;
import iseries.repository.TemporadaRepository;
import iseries.util.FileUtil;

@Controller
public class SerieController {

	
	@Autowired
	SerieRepository serieRepo;
	
	@Autowired
	TemporadaRepository tempRepo;
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value = "cadastraSerie", method = RequestMethod.POST)
	String cadastraSerie(Serie serie, @RequestParam(value="imagem", required=false) MultipartFile imagem) throws IOException{
		
		if(imagem.getBytes().length != 0){
			FileUtil.salvarImagem(servletContext.getRealPath("/")+"resources/img/noticias/"+serie.getNome()+".png", imagem);
			serie.setPath(serie.getNome()+".png");
		}else{
			serie.setPath("news.png");
		}
		
		serieRepo.save(serie);
		return "redirect:homeUsuario";
	}
	
	@RequestMapping(value = "updateSerie", method = RequestMethod.POST)
	String updateSerie(Serie serie, Model model, @RequestParam(value="imagem", required=false) MultipartFile imagem) throws IOException{
		
		if(imagem.getBytes().length != 0){
			FileUtil.salvarImagem(servletContext.getRealPath("/")+"resources/img/noticias/"+serie.getNome()+".png", imagem);
			serie.setPath(serie.getNome()+".png");
		}else{
			serie.setPath("news.png");
		}
		
		serieRepo.save(serie);
		
		serie = serieRepo.findOne(serie.getId());
		model.addAttribute("serie", serie);
		
		ArrayList<Temporada> temporadas = (ArrayList<Temporada>) tempRepo.findTemporadaOfSerie(serie.getId());
		model.addAttribute("temporadas", temporadas);
		
		return "/user/visualizar-serie";
	}
	
	// Usado p/ Visualização Normal...
	@RequestMapping(value = "viewSerie", method = RequestMethod.GET)
	String viewSerie(HttpSession session, Serie serie, Model model){

		ArrayList<Temporada> temporadas = (ArrayList<Temporada>) tempRepo.findTemporadaOfSerie(serie.getId());
		
		model.addAttribute("serie", serieRepo.findOne(serie.getId()));
		model.addAttribute("temporadas", temporadas);
		
		return "/user/visualizar-serie";
	}
	
	//Usando p/ Quando add/del Temporada...
	@RequestMapping(value = "viewSerieII", method = RequestMethod.GET)
	String viewSerieII(HttpSession session, Model model, @RequestParam(value="id", required=false) Integer id){
		
		if(session.getAttribute("idx") != null)
			id = (Integer) session.getAttribute("idx");
		
		ArrayList<Temporada> temporadas = (ArrayList<Temporada>) tempRepo.findTemporadaOfSerie(id);
		
		model.addAttribute("serie", serieRepo.findOne(id));
		model.addAttribute("temporadas", temporadas);
		
		return "/user/visualizar-serie";
	}

}
