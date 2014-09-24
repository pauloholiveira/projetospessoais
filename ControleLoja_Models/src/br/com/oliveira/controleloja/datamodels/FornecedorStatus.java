package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the fornecedor_status database table.
 * 
 */
@Entity
@Table(name="fornecedor_status")
@NamedQuery(name="FornecedorStatus.findAll", query="SELECT f FROM FornecedorStatus f")
public class FornecedorStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Fornecedor
	@OneToMany(mappedBy="fornecedorStatus")
	private List<Fornecedor> fornecedors;

	public FornecedorStatus() {
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

	public List<Fornecedor> getFornecedors() {
		return this.fornecedors;
	}

	public void setFornecedors(List<Fornecedor> fornecedors) {
		this.fornecedors = fornecedors;
	}

	public Fornecedor addFornecedor(Fornecedor fornecedor) {
		getFornecedors().add(fornecedor);
		fornecedor.setFornecedorStatus(this);

		return fornecedor;
	}

	public Fornecedor removeFornecedor(Fornecedor fornecedor) {
		getFornecedors().remove(fornecedor);
		fornecedor.setFornecedorStatus(null);

		return fornecedor;
	}

}