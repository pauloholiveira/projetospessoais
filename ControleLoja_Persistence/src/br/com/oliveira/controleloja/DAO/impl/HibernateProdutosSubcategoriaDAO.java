package br.com.oliveira.controleloja.DAO.impl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import br.com.oliveira.controleloja.DAO.ProdutosSubcategoriaDAO;
import br.com.oliveira.controleloja.datamodels.ProdutosCategorias;
import br.com.oliveira.controleloja.datamodels.ProdutosSubcategoria;

public class HibernateProdutosSubcategoriaDAO extends GenericHibernateDAO<ProdutosSubcategoria, Integer> implements ProdutosSubcategoriaDAO {

	public HibernateProdutosSubcategoriaDAO() {
		super();
	}
	
	@Override
	public List<ProdutosSubcategoria> obterSubcategoriaPorCategoria(ProdutosCategorias categoria) {
		List<ProdutosSubcategoria> list = this.findByCriteria(Restrictions.eq("produtosCategorias", categoria));
		
		return list;
	}
	
}
