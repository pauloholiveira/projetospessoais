package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutoDAO;
import br.com.oliveira.controleloja.datamodels.Produto;

public class HibernateProdutoDAO extends GenericHibernateDAO<Produto, Integer> implements ProdutoDAO {

	public HibernateProdutoDAO() {
		super();
	}
	
}
