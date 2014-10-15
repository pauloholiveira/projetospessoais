package br.com.oliveira.controleloja.DAO;

import java.util.List;

import br.com.oliveira.controleloja.datamodels.ProdutosCategorias;
import br.com.oliveira.controleloja.datamodels.ProdutosSubcategoria;

public interface ProdutosSubcategoriaDAO extends DAOService<ProdutosSubcategoria, Integer> {
	public List<ProdutosSubcategoria> obterSubcategoriaPorCategoria(ProdutosCategorias categoria);
}
