package br.com.paulo.controlehoras.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="expediente", catalog="controle_horas", schema="")
public class Expediente implements Serializable{
	private static final long serialVersionUID = -4883106678254797835L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Basic(optional = false)
    @Column(name = "id")
	private Integer id;
	
	@Basic(optional = false)
    @Column(name = "data_nascimento", insertable=false, updatable=false)
    @Temporal(TemporalType.DATE)
    private Date dataNascimento;
	
	@Column(name = "observacoes")
	private String observacoes;
	
	@JoinColumns({
		@JoinColumn(name="cpf_usuario", referencedColumnName="cpf"),
		@JoinColumn(name="data_nascimento", referencedColumnName="data_nascimento")
		})
	@ManyToOne(optional = false)
	private Usuario cpf_usuario;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="expediente")
	private List<Operacao> operacoes;
		
	
	public Expediente() { }
	
	public Expediente(Integer id) {
		this.id = id;
	}
	
	public Expediente(Integer id, Date dataNascimento) {
		this.id = id;
		this.dataNascimento = dataNascimento;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usuario getCpf_usuario() {
		return cpf_usuario;
	}

	public void setCpf_usuario(Usuario cpf_usuario) {
		this.cpf_usuario = cpf_usuario;
	}
	
	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	
	public List<Operacao> getOperacoes() {
		return operacoes;
	}

	public void setOperacoes(List<Operacao> operacoes) {
		this.operacoes = operacoes;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
}
