package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the vendas database table.
 * 
 */
@Entity
@Table(name="vendas")
@NamedQuery(name="Venda.findAll", query="SELECT v FROM Venda v")
public class Venda implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="`data_venda`")
	private Date data_Venda;

	private int QTD_produtos;

	//bi-directional many-to-one association to Cliente
	@ManyToOne
	private Cliente cliente;

	//bi-directional many-to-one association to VendaStatus
	@ManyToOne
	@JoinColumn(name="status_id")
	private VendaStatus vendaStatus;

	//bi-directional many-to-many association to Produto
	@ManyToMany
	@JoinTable(
		name="vendas_produtos"
		, joinColumns={
			@JoinColumn(name="id_venda")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_produto")
			}
		)
	private List<Produto> produtos;

	public Venda() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData_Venda() {
		return this.data_Venda;
	}

	public void setData_Venda(Date data_Venda) {
		this.data_Venda = data_Venda;
	}

	public int getQTD_produtos() {
		return this.QTD_produtos;
	}

	public void setQTD_produtos(int QTD_produtos) {
		this.QTD_produtos = QTD_produtos;
	}

	public Cliente getCliente() {
		return this.cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public VendaStatus getVendaStatus() {
		return this.vendaStatus;
	}

	public void setVendaStatus(VendaStatus vendaStatus) {
		this.vendaStatus = vendaStatus;
	}

	public List<Produto> getProdutos() {
		return this.produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

}