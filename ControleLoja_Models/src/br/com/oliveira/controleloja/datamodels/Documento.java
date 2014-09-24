package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the documentos database table.
 * 
 */
@Entity
@Table(name="documentos")
@NamedQuery(name="Documento.findAll", query="SELECT d FROM Documento d")
public class Documento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String tipo;

	private String valor;

	//bi-directional many-to-one association to Cliente
	@OneToMany(mappedBy="documento")
	private List<Cliente> clientes;

	//bi-directional many-to-one association to Fornecedor
	@OneToMany(mappedBy="documento")
	private List<Fornecedor> fornecedors;

	public Documento() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getValor() {
		return this.valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public List<Cliente> getClientes() {
		return this.clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

	public Cliente addCliente(Cliente cliente) {
		getClientes().add(cliente);
		cliente.setDocumento(this);

		return cliente;
	}

	public Cliente removeCliente(Cliente cliente) {
		getClientes().remove(cliente);
		cliente.setDocumento(null);

		return cliente;
	}

	public List<Fornecedor> getFornecedors() {
		return this.fornecedors;
	}

	public void setFornecedors(List<Fornecedor> fornecedors) {
		this.fornecedors = fornecedors;
	}

	public Fornecedor addFornecedor(Fornecedor fornecedor) {
		getFornecedors().add(fornecedor);
		fornecedor.setDocumento(this);

		return fornecedor;
	}

	public Fornecedor removeFornecedor(Fornecedor fornecedor) {
		getFornecedors().remove(fornecedor);
		fornecedor.setDocumento(null);

		return fornecedor;
	}

}