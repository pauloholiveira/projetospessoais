package br.com.oliveira.controleloja.componentes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.oliveira.controleloja.DAO.VendaStatusDAO;
import br.com.oliveira.controleloja.datamodels.VendaStatus;

@Component("VendasCNTE")
@Transactional
public class VendasCNTE {

	//DAOs que serão injetados pelo Spring.
	@Autowired
	private VendaStatusDAO vendaStatusDAO;	
	
	
	public VendasCNTE() {
	}
	
	public VendaStatus obterStatusPorDescricao(String descricao) {
		return vendaStatusDAO.obterVendaStatusPorDescricao(descricao);
	}
	
	public List<VendaStatus> obterStatus() {	
		return vendaStatusDAO.loadAll();
	}
	
	public VendaStatusDAO getVendaStatusDAO() {
		return vendaStatusDAO;
	}

	public void setVendaStatusDAO(VendaStatusDAO vendaStatusDAO) {
		this.vendaStatusDAO = vendaStatusDAO;
	}
}
