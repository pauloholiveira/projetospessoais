package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the produto database table.
 * 
 */
@Entity
@Table(name="produto")
@NamedQuery(name="Produto.findAll", query="SELECT p FROM Produto p")
public class Produto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="codigo_barras")
	private String codigoBarras;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="data_cadastro")
	private Date dataCadastro;

	private String descricao;

	private String observacoes;

	private BigDecimal preco;

	/*//bi-directional many-to-many association to Compra
	@ManyToMany
	@JoinTable(
		name="compra_produtos"
		, joinColumns={
			@JoinColumn(name="id_produto")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_compra")
			}
		)
	private List<Compra> compras;*/

	//bi-directional many-to-one association to EstoqueOperacao
	@OneToMany(mappedBy="produto")
	private List<EstoqueOperacao> estoqueOperacaos;

	//bi-directional many-to-one association to ProdutosCategoria
	@ManyToOne
	@JoinColumn(name="id_categoria")
	private ProdutosCategoria produtosCategoria;

	//bi-directional many-to-one association to ProdutoStatus
	@ManyToOne
	@JoinColumn(name="id_status")
	private ProdutoStatus produtoStatus;

	//bi-directional many-to-one association to ProdutosSubcategoria
	@ManyToOne
	@JoinColumn(name="id_subcategoria")
	private ProdutosSubcategoria produtosSubcategoria;

/*	//bi-directional many-to-many association to Venda
	@ManyToMany(mappedBy="produtos")
	private List<Venda> vendas;*/

	public Produto() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCodigoBarras() {
		return this.codigoBarras;
	}

	public void setCodigoBarras(String codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public Date getDataCadastro() {
		return this.dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getObservacoes() {
		return this.observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

	public BigDecimal getPreco() {
		return this.preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	/*public List<Compra> getCompras() {
		return this.compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}*/

	public List<EstoqueOperacao> getEstoqueOperacaos() {
		return this.estoqueOperacaos;
	}

	public void setEstoqueOperacaos(List<EstoqueOperacao> estoqueOperacaos) {
		this.estoqueOperacaos = estoqueOperacaos;
	}

	public EstoqueOperacao addEstoqueOperacao(EstoqueOperacao estoqueOperacao) {
		getEstoqueOperacaos().add(estoqueOperacao);
		estoqueOperacao.setProduto(this);

		return estoqueOperacao;
	}

	public EstoqueOperacao removeEstoqueOperacao(EstoqueOperacao estoqueOperacao) {
		getEstoqueOperacaos().remove(estoqueOperacao);
		estoqueOperacao.setProduto(null);

		return estoqueOperacao;
	}

	public ProdutosCategoria getProdutosCategoria() {
		return this.produtosCategoria;
	}

	public void setProdutosCategoria(ProdutosCategoria produtosCategoria) {
		this.produtosCategoria = produtosCategoria;
	}

	public ProdutoStatus getProdutoStatus() {
		return this.produtoStatus;
	}

	public void setProdutoStatus(ProdutoStatus produtoStatus) {
		this.produtoStatus = produtoStatus;
	}

	public ProdutosSubcategoria getProdutosSubcategoria() {
		return this.produtosSubcategoria;
	}

	public void setProdutosSubcategoria(ProdutosSubcategoria produtosSubcategoria) {
		this.produtosSubcategoria = produtosSubcategoria;
	}

	/*public List<Venda> getVendas() {
		return this.vendas;
	}

	public void setVendas(List<Venda> vendas) {
		this.vendas = vendas;
	}*/

}