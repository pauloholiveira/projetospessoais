package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutosCategoriaDAO;
import br.com.oliveira.controleloja.datamodels.ProdutoCategorias;

public class HibernateProdutosCategoriaDAO extends GenericHibernateDAO<ProdutoCategorias, Integer> implements ProdutosCategoriaDAO {

	public HibernateProdutosCategoriaDAO() {
		super();
	}
	
}
