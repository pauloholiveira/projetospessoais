package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the estoque_fluxo database table.
 * 
 */
@Entity
@Table(name="estoque_fluxo")
@NamedQuery(name="EstoqueFluxo.findAll", query="SELECT e FROM EstoqueFluxo e")
public class EstoqueFluxo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to EstoqueOperacao
	@OneToMany(mappedBy="estoqueFluxo")
	private List<EstoqueOperacao> estoqueOperacaos;

	public EstoqueFluxo() {
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

	public List<EstoqueOperacao> getEstoqueOperacaos() {
		return this.estoqueOperacaos;
	}

	public void setEstoqueOperacaos(List<EstoqueOperacao> estoqueOperacaos) {
		this.estoqueOperacaos = estoqueOperacaos;
	}

	public EstoqueOperacao addEstoqueOperacao(EstoqueOperacao estoqueOperacao) {
		getEstoqueOperacaos().add(estoqueOperacao);
		estoqueOperacao.setEstoqueFluxo(this);

		return estoqueOperacao;
	}

	public EstoqueOperacao removeEstoqueOperacao(EstoqueOperacao estoqueOperacao) {
		getEstoqueOperacaos().remove(estoqueOperacao);
		estoqueOperacao.setEstoqueFluxo(null);

		return estoqueOperacao;
	}

}