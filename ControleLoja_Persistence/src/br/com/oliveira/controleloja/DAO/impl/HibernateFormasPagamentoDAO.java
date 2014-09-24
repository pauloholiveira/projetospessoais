package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.FormasPagamentoDAO;
import br.com.oliveira.controleloja.datamodels.FormasPagamento;

public class HibernateFormasPagamentoDAO extends GenericHibernateDAO<FormasPagamento, Integer> implements FormasPagamentoDAO {

	public HibernateFormasPagamentoDAO() {
		super();
	}
	
}
