package br.com.oliveira.controleloja.componentes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.oliveira.controleloja.DAO.ProdutoDAO;
import br.com.oliveira.controleloja.DAO.ProdutosCategoriaDAO;
import br.com.oliveira.controleloja.DAO.ProdutosSubcategoriaDAO;
import br.com.oliveira.controleloja.datamodels.Produto;
import br.com.oliveira.controleloja.datamodels.ProdutosCategorias;
import br.com.oliveira.controleloja.datamodels.ProdutosSubcategoria;

@Component("CadastroProdutosCNTE")
@Transactional
public class CadastroProdutosCNTE {
	
	@Autowired
	private ProdutoDAO produtoDAO;
	
	@Autowired
	private ProdutosCategoriaDAO produtosCategoriaDAO;
	
	@Autowired
	private ProdutosSubcategoriaDAO produtosSubcategoriaDAO;
	
	public CadastroProdutosCNTE(){	
	}
	
	public List<ProdutosSubcategoria> obterSubCategoriasPorCategoria(ProdutosCategorias categoria) {
		return produtosSubcategoriaDAO.obterSubcategoriaPorCategoria(categoria);
	}
	
	public List<ProdutosSubcategoria> obterListaSubcategorias() {
		return produtosSubcategoriaDAO.loadAll();
	}
	
	public List<ProdutosCategorias> obterListaCategorias() {	
		return produtosCategoriaDAO.loadAll();
	}
	
	public void inserirProduto(Produto pr) throws Exception{
		try{
			produtoDAO.store(pr);
		} catch(Exception ex){
			throw new Exception(ex.getMessage(), ex);
		}
	}

	public ProdutoDAO getProdutoDAO() {
		return produtoDAO;
	}

	public void setProdutoDAO(ProdutoDAO produtoDAO) {
		this.produtoDAO = produtoDAO;
	}

	public ProdutosCategoriaDAO getProdutosCategoriaDAO() {
		return produtosCategoriaDAO;
	}

	public void setProdutosCategoriaDAO(ProdutosCategoriaDAO produtosCategoriaDAO) {
		this.produtosCategoriaDAO = produtosCategoriaDAO;
	}

	public ProdutosSubcategoriaDAO getProdutosSubcategoriaDAO() {
		return produtosSubcategoriaDAO;
	}

	public void setProdutosSubcategoriaDAO(
			ProdutosSubcategoriaDAO produtosSubcategoriaDAO) {
		this.produtosSubcategoriaDAO = produtosSubcategoriaDAO;
	}
}
