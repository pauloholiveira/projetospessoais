package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the fornecedor database table.
 * 
 */
@Entity
@Table(name="fornecedor")
@NamedQuery(name="Fornecedor.findAll", query="SELECT f FROM Fornecedor f")
public class Fornecedor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String bairro;

	private String logradouro;

	private String nome;

	private String referencia;

	@Column(name="telefone_celular")
	private String telefoneCelular;

	@Column(name="telefone_fixo")
	private String telefoneFixo;

	//bi-directional many-to-one association to Compra
	@OneToMany(mappedBy="fornecedor")
	private List<Compra> compras;

	//bi-directional many-to-one association to Cidade
	@ManyToOne
	private Cidade cidade;

	//bi-directional many-to-one association to Documento
	@ManyToOne
	private Documento documento;

	//bi-directional many-to-one association to FornecedorStatus
	@ManyToOne
	@JoinColumn(name="status_id")
	private FornecedorStatus fornecedorStatus;

	public Fornecedor() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBairro() {
		return this.bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getLogradouro() {
		return this.logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getReferencia() {
		return this.referencia;
	}

	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}

	public String getTelefoneCelular() {
		return this.telefoneCelular;
	}

	public void setTelefoneCelular(String telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}

	public String getTelefoneFixo() {
		return this.telefoneFixo;
	}

	public void setTelefoneFixo(String telefoneFixo) {
		this.telefoneFixo = telefoneFixo;
	}

	public List<Compra> getCompras() {
		return this.compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}

	public Compra addCompra(Compra compra) {
		getCompras().add(compra);
		compra.setFornecedor(this);

		return compra;
	}

	public Compra removeCompra(Compra compra) {
		getCompras().remove(compra);
		compra.setFornecedor(null);

		return compra;
	}

	public Cidade getCidade() {
		return this.cidade;
	}

	public void setCidade(Cidade cidade) {
		this.cidade = cidade;
	}

	public Documento getDocumento() {
		return this.documento;
	}

	public void setDocumento(Documento documento) {
		this.documento = documento;
	}

	public FornecedorStatus getFornecedorStatus() {
		return this.fornecedorStatus;
	}

	public void setFornecedorStatus(FornecedorStatus fornecedorStatus) {
		this.fornecedorStatus = fornecedorStatus;
	}

}