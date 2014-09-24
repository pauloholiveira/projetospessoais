package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the venda_status database table.
 * 
 */
@Entity
@Table(name="venda_status")
@NamedQuery(name="VendaStatus.findAll", query="SELECT v FROM VendaStatus v")
public class VendaStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Venda
	@OneToMany(mappedBy="vendaStatus")
	private List<Venda> vendas;

	public VendaStatus() {
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

	public List<Venda> getVendas() {
		return this.vendas;
	}

	public void setVendas(List<Venda> vendas) {
		this.vendas = vendas;
	}

	public Venda addVenda(Venda venda) {
		getVendas().add(venda);
		venda.setVendaStatus(this);

		return venda;
	}

	public Venda removeVenda(Venda venda) {
		getVendas().remove(venda);
		venda.setVendaStatus(null);

		return venda;
	}
	
	@Override
    public String toString() {
        return descricao;
    }

}