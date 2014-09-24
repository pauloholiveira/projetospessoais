package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the compra database table.
 * 
 */
@Entity
@Table(name="compra")
@NamedQuery(name="Compra.findAll", query="SELECT c FROM Compra c")
public class Compra implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date data;

	@Column(name="qtd_parcelas")
	private int qtdParcelas;

	@Column(name="QTD_PRODUTOS")
	private int qtdProdutos;

	private BigDecimal valor;

	//bi-directional many-to-one association to FormasPagamento
	@ManyToOne
	@JoinColumn(name="forma_id")
	private FormasPagamento formasPagamento;

	//bi-directional many-to-one association to Fornecedor
	@ManyToOne
	private Fornecedor fornecedor;

	//bi-directional many-to-one association to CompraStatus
	@ManyToOne
	@JoinColumn(name="status_id")
	private CompraStatus compraStatus;

	//bi-directional many-to-many association to Produto
	@ManyToMany(mappedBy="compras")
	private List<Produto> produtos;

	public Compra() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData() {
		return this.data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public int getQtdParcelas() {
		return this.qtdParcelas;
	}

	public void setQtdParcelas(int qtdParcelas) {
		this.qtdParcelas = qtdParcelas;
	}

	public int getQtdProdutos() {
		return this.qtdProdutos;
	}

	public void setQtdProdutos(int qtdProdutos) {
		this.qtdProdutos = qtdProdutos;
	}

	public BigDecimal getValor() {
		return this.valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public FormasPagamento getFormasPagamento() {
		return this.formasPagamento;
	}

	public void setFormasPagamento(FormasPagamento formasPagamento) {
		this.formasPagamento = formasPagamento;
	}

	public Fornecedor getFornecedor() {
		return this.fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

	public CompraStatus getCompraStatus() {
		return this.compraStatus;
	}

	public void setCompraStatus(CompraStatus compraStatus) {
		this.compraStatus = compraStatus;
	}

	public List<Produto> getProdutos() {
		return this.produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

}