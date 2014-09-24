package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the estoque_operacao database table.
 * 
 */
@Entity
@Table(name="estoque_operacao")
@NamedQuery(name="EstoqueOperacao.findAll", query="SELECT e FROM EstoqueOperacao e")
public class EstoqueOperacao implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="data_operacao")
	private Date dataOperacao;

	@Column(name="qtd_produtos")
	private int qtdProdutos;

	//bi-directional many-to-one association to EstoqueFluxo
	@ManyToOne
	@JoinColumn(name="fluxo_id")
	private EstoqueFluxo estoqueFluxo;

	//bi-directional many-to-one association to Produto
	@ManyToOne
	@JoinColumn(name="id_produto")
	private Produto produto;

	public EstoqueOperacao() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataOperacao() {
		return this.dataOperacao;
	}

	public void setDataOperacao(Date dataOperacao) {
		this.dataOperacao = dataOperacao;
	}

	public int getQtdProdutos() {
		return this.qtdProdutos;
	}

	public void setQtdProdutos(int qtdProdutos) {
		this.qtdProdutos = qtdProdutos;
	}

	public EstoqueFluxo getEstoqueFluxo() {
		return this.estoqueFluxo;
	}

	public void setEstoqueFluxo(EstoqueFluxo estoqueFluxo) {
		this.estoqueFluxo = estoqueFluxo;
	}

	public Produto getProduto() {
		return this.produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

}