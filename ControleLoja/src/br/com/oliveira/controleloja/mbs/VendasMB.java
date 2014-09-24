package br.com.oliveira.controleloja.mbs;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import br.com.oliveira.controleloja.componentes.VendasCNTE;
import br.com.oliveira.controleloja.datamodels.VendaStatus;

@Controller("VendasMB")
@Scope("request")
public class VendasMB {
	
	@Resource
	private VendasCNTE vendasCNTE;
	
	List<VendaStatus> teste = new ArrayList<VendaStatus>();
	VendaStatus selectedStatusVendas;
	
	public VendasMB() {
	}
	
	public VendasCNTE getVendasCNTE() {
		return vendasCNTE;
	}

	public VendaStatus getSelectedStatusVendas() {
		return selectedStatusVendas;
	}

	public void setSelectedStatusVendas(VendaStatus selectedStatusVendas) {
		this.selectedStatusVendas = selectedStatusVendas;
	}

	public void setTeste(List<VendaStatus> teste) {
		this.teste = teste;
	}

	public void setVendasCNTE(VendasCNTE vendasCNTE) {
		this.vendasCNTE = vendasCNTE;
	}
	
	public List<VendaStatus> getTeste() {
		teste = vendasCNTE.obterStatus();
		return teste;
	}

	public void setTeste(ArrayList<VendaStatus> teste) {
		this.teste = teste;
	}
}
