package br.com.paulo.controlehoras.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Embeddable
public class UsuarioPK implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6231896605024847233L;
	
	@Basic(optional = false)
    @Column(name = "cpf")
	private String cpf;
	
	@Basic(optional = false)
    @Column(name = "data_nascimento")
	@Temporal(TemporalType.DATE)
	private Date data_nascimento;
	
	public UsuarioPK(){	}
	
	public UsuarioPK(String cpf, Date data_nascimento) {
        this.cpf = cpf;
        this.data_nascimento = data_nascimento;
    }
	
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Date getData_nascimento() {
		return data_nascimento;
	}
	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
		result = prime * result
				+ ((data_nascimento == null) ? 0 : data_nascimento.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UsuarioPK other = (UsuarioPK) obj;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		if (data_nascimento == null) {
			if (other.data_nascimento != null)
				return false;
		} else if (!data_nascimento.equals(other.data_nascimento))
			return false;
		return true;
	}
	
	
}
