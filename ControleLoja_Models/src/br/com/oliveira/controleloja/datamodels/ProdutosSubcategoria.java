package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the produtos_subcategoria database table.
 * 
 */
@Entity
@Table(name="produtos_subcategoria")
@NamedQuery(name="ProdutosSubcategoria.findAll", query="SELECT p FROM ProdutosSubcategoria p")
public class ProdutosSubcategoria implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Produto
	@OneToMany(mappedBy="produtosSubcategoria")
	private List<Produto> produtos;

	//bi-directional many-to-one association to ProdutosCategoria
	@ManyToOne
	@JoinColumn(name="categoria_ID")
	private ProdutosCategoria produtosCategoria;

	public ProdutosSubcategoria() {
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
		produto.setProdutosSubcategoria(this);

		return produto;
	}

	public Produto removeProduto(Produto produto) {
		getProdutos().remove(produto);
		produto.setProdutosSubcategoria(null);

		return produto;
	}

	public ProdutosCategoria getProdutosCategoria() {
		return this.produtosCategoria;
	}

	public void setProdutosCategoria(ProdutosCategoria produtosCategoria) {
		this.produtosCategoria = produtosCategoria;
	}

}