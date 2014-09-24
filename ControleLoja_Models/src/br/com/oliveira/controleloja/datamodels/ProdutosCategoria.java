package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the produtos_categorias database table.
 * 
 */
@Entity
@Table(name="produtos_categorias")
@NamedQuery(name="ProdutosCategoria.findAll", query="SELECT p FROM ProdutosCategoria p")
public class ProdutosCategoria implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Produto
	@OneToMany(mappedBy="produtosCategoria")
	private List<Produto> produtos;

	//bi-directional many-to-one association to ProdutosSubcategoria
	@OneToMany(mappedBy="produtosCategoria")
	private List<ProdutosSubcategoria> produtosSubcategorias;

	public ProdutosCategoria() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Produto> getProdutos() {
		return this.produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

	public Produto addProduto(Produto produto) {
		getProdutos().add(produto);
		produto.setProdutosCategoria(this);

		return produto;
	}

	public Produto removeProduto(Produto produto) {
		getProdutos().remove(produto);
		produto.setProdutosCategoria(null);

		return produto;
	}

	public List<ProdutosSubcategoria> getProdutosSubcategorias() {
		return this.produtosSubcategorias;
	}

	public void setProdutosSubcategorias(List<ProdutosSubcategoria> produtosSubcategorias) {
		this.produtosSubcategorias = produtosSubcategorias;
	}

	public ProdutosSubcategoria addProdutosSubcategoria(ProdutosSubcategoria produtosSubcategoria) {
		getProdutosSubcategorias().add(produtosSubcategoria);
		produtosSubcategoria.setProdutosCategoria(this);

		return produtosSubcategoria;
	}

	public ProdutosSubcategoria removeProdutosSubcategoria(ProdutosSubcategoria produtosSubcategoria) {
		getProdutosSubcategorias().remove(produtosSubcategoria);
		produtosSubcategoria.setProdutosCategoria(null);

		return produtosSubcategoria;
	}

}