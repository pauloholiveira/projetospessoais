package br.com.oliveira.controleloja.DAO;

import br.com.oliveira.controleloja.datamodels.VendasStatus;

public interface VendaStatusDAO extends DAOService<VendasStatus, Integer> {
	public VendasStatus obterVendaStatusPorDescricao(String descricao);
}
