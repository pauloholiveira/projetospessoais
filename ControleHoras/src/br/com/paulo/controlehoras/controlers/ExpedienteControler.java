package br.com.paulo.controlehoras.controlers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.dao.OperacaoDAO;

@Controller
public class ExpedienteControler {

	@Autowired
	private ExpedienteDAO expDAO;
	
	@Autowired
	private OperacaoDAO opDAO;

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
	
	@RequestMapping(value="index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="relatorios")
	public String relatorios() {
		return "relatorios";
	}
}
