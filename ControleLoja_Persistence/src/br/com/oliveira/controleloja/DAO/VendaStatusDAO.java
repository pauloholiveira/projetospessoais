package br.com.oliveira.controleloja.DAO;

import br.com.oliveira.controleloja.datamodels.VendaStatus;

public interface VendaStatusDAO extends DAOService<VendaStatus, Integer> {
	public VendaStatus obterVendaStatusPorDescricao(String descricao);
}
