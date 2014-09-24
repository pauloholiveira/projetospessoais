package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.EstoqueFluxoDAO;
import br.com.oliveira.controleloja.datamodels.EstoqueFluxo;

public class HibernateEstoqueFluxoDAO extends GenericHibernateDAO<EstoqueFluxo, Integer> implements EstoqueFluxoDAO {

	public HibernateEstoqueFluxoDAO() {
		super();
	}
	
}
