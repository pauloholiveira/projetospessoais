package br.com.oliveira.controleloja.DAO;

import java.util.List;

import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Estado;

public interface CidadeDAO extends DAOService<Cidade, Integer> {
	public List<Cidade> obterCidadesPorEstado(Estado estado);
}
