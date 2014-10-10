package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutosCategoriaDAO;
import br.com.oliveira.controleloja.datamodels.ProdutosCategorias;

public class HibernateProdutosCategoriaDAO extends GenericHibernateDAO<ProdutosCategorias, Integer> implements ProdutosCategoriaDAO {

	public HibernateProdutosCategoriaDAO() {
		super();
	}
	
}
