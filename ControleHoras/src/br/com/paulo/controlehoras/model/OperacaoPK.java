package br.com.paulo.controlehoras.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class OperacaoPK implements Serializable {
	private static final long serialVersionUID = 5980129845482954716L;
	
	@Basic(optional = false)
    @Column(name = "tipo")
	private Integer tipo;
	
	@Basic(optional = false)
    @Column(name = "id_expediente")
	private Integer id_expediente;
	
	
	public OperacaoPK() {
    }

    public OperacaoPK(int tipo, int id_expediente) {
        this.tipo = tipo;
        this.id_expediente = id_expediente;
    }
		
	public Integer getTipo() {
		return tipo;
	}
	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}
	public Integer getId_expediente() {
		return id_expediente;
	}
	public void setId_expediente(Integer id_expediente) {
		this.id_expediente = id_expediente;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((id_expediente == null) ? 0 : id_expediente.hashCode());
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
		OperacaoPK other = (OperacaoPK) obj;
		if (id_expediente == null) {
			if (other.id_expediente != null)
				return false;
		} else if (!id_expediente.equals(other.id_expediente))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}
	
	
	
}
