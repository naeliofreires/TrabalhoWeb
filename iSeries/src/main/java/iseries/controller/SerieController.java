package iseries.controller;

import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import iseries.model.Serie;
import iseries.repository.SerieRepository;
import iseries.util.FileUtil;

@Controller
public class SerieController {

	
	@Autowired
	SerieRepository serieRepo;
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value = "cadastraSerie", method = RequestMethod.POST)
	String cadastraSerie(Serie serie, @RequestParam(value="imagem", required=false) MultipartFile imagem) throws IOException{
		
		System.out.println(imagem.getName() );
		if(imagem.getBytes().length != 0){
			FileUtil.salvarImagem(servletContext.getRealPath("/")+"resources/img/noticias/"+serie.getNome()+".png", imagem);
			serie.setPath(serie.getNome()+".png");
		}else{
			serie.setPath("news.png");
		}
		
		serieRepo.save(serie);
		return "redirect:listaSeries";
	}
	
	@RequestMapping(value = "viewSerie", method = RequestMethod.GET)
	String viewSerie(Serie serie, Model model){
		
		serie = serieRepo.findOne(serie.getId());
		
		model.addAttribute("serie", serie);
		
		return "/adm/edit-serie";
	}
}
