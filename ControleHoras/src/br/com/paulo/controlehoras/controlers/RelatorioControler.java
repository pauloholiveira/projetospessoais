package br.com.paulo.controlehoras.controlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;

@Controller
@RequestMapping("/relatorios")
public class RelatorioControler {

	@Autowired
	private TipoOperacaoDAO tipoDAO;
	
	@RequestMapping(method=RequestMethod.GET)
	public String testes(Model model) {
		model.addAttribute("listaTipos", tipoDAO.findAll());
		return "relatorios";
	}
}
