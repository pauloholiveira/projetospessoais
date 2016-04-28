package br.com.paulo.controlehoras.controlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.dao.OperacaoDAO;
import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;
import br.com.paulo.controlehoras.model.TipoOperacao;

@Controller
public class ExpedienteControler {

	@Autowired
	private ExpedienteDAO expDAO;
	
	@Autowired
	private OperacaoDAO opDAO;
	
	@Autowired
	private TipoOperacaoDAO tipoopDAO;

	public ExpedienteDAO getExpDAO() {
		return expDAO;
	}

	public void setExpDAO(ExpedienteDAO expDAO) {
		this.expDAO = expDAO;
	}
	
	public OperacaoDAO getOpDAO() {
		return opDAO;
	}

	public void setOpDAO(OperacaoDAO expDAO) {
		this.opDAO = expDAO;
	}
	
	@RequestMapping({"/", "/index"})
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/newoperation", method=RequestMethod.POST)
	public String processRegistration(TipoOperacao tipoOperacao) {
		//Se for inicio expediente, cria o expediente
		//cria a operação
		
		//se não for inicio, cria a operação.
		
		tipoopDAO.save(tipoOperacao);
		return "redirect:/index/";
	}
}
