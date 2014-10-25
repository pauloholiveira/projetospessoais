package br.com.oliveira.controleloja.mbs;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.oliveira.controleloja.componentes.VendasCNTE;
import br.com.oliveira.controleloja.datamodels.VendasStatus;

@Controller("VendasMB")
@Scope("request")
public class VendasMB {
	
	@Resource
	private VendasCNTE vendasCNTE;
	
	List<VendasStatus> teste = new ArrayList<VendasStatus>();
	VendasStatus selectedStatusVendas;
	
	public VendasMB() {
	}
	
	public VendasCNTE getVendasCNTE() {
		return vendasCNTE;
	}

	public VendasStatus getSelectedStatusVendas() {
		return selectedStatusVendas;
	}

	public void setSelectedStatusVendas(VendasStatus selectedStatusVendas) {
		this.selectedStatusVendas = selectedStatusVendas;
	}

	public void setTeste(List<VendasStatus> teste) {
		this.teste = teste;
	}

	public void setVendasCNTE(VendasCNTE vendasCNTE) {
		this.vendasCNTE = vendasCNTE;
	}
	
	public List<VendasStatus> getTeste() {
		teste = vendasCNTE.obterStatus();
		return teste;
	}

	public void setTeste(ArrayList<VendasStatus> teste) {
		this.teste = teste;
	}
}
