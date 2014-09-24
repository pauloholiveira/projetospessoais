package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ProdutosSubcategoriaDAO;
import br.com.oliveira.controleloja.datamodels.ProdutosSubcategoria;

public class HibernateProdutosSubcategoriaDAO extends GenericHibernateDAO<ProdutosSubcategoria, Integer> implements ProdutosSubcategoriaDAO {

	public HibernateProdutosSubcategoriaDAO() {
		super();
	}
	
}
