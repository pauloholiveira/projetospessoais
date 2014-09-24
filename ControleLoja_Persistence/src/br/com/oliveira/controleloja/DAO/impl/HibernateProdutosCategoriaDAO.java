package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutosCategoriaDAO;
import br.com.oliveira.controleloja.datamodels.ProdutosCategoria;

public class HibernateProdutosCategoriaDAO extends GenericHibernateDAO<ProdutosCategoria, Integer> implements ProdutosCategoriaDAO {

	public HibernateProdutosCategoriaDAO() {
		super();
	}
	
}
