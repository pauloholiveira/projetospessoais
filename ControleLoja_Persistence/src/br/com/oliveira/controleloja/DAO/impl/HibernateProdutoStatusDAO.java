package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutoStatusDAO;
import br.com.oliveira.controleloja.datamodels.ProdutoStatus;

public class HibernateProdutoStatusDAO extends GenericHibernateDAO<ProdutoStatus, Integer> implements ProdutoStatusDAO {

	public HibernateProdutoStatusDAO() {
		super();
	}
	
}
