package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the cliente_status database table.
 * 
 */
@Entity
@Table(name="cliente_status")
@NamedQuery(name="ClienteStatus.findAll", query="SELECT c FROM ClienteStatus c")
public class ClienteStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Cliente
	@OneToMany(mappedBy="clienteStatus")
	private List<Cliente> clientes;

	public ClienteStatus() {
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

	public List<Cliente> getClientes() {
		return this.clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

	public Cliente addCliente(Cliente cliente) {
		getClientes().add(cliente);
		cliente.setClienteStatus(this);

		return cliente;
	}

	public Cliente removeCliente(Cliente cliente) {
		getClientes().remove(cliente);
		cliente.setClienteStatus(null);

		return cliente;
	}

}