package br.com.paulo.controlehoras.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Embeddable
public class OperacaoPK implements Serializable {
	private static final long serialVersionUID = 5980129845482954716L;
	
	@Basic(optional = false)
    @Column(name = "tipo")
	private Integer tipo;
	
	@Basic(optional = false)
    @Column(name = "id_expediente")
	private Integer id_expediente;
	
	@Basic(optional = false)
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "data_hora")
	private Date data_hora;
	
	public OperacaoPK() {
    }

    public OperacaoPK(int tipo, int id_expediente) {
        this.tipo = tipo;
        this.id_expediente = id_expediente;
        this.data_hora = new Date();
    }
    public OperacaoPK(int tipo, int id_expediente, Date data_hora) {
        this.tipo = tipo;
        this.id_expediente = id_expediente;
        this.data_hora = data_hora;
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

	public Date getData_hora() {
		return data_hora;
	}

	public void setData_hora(Date data_hora) {
		this.data_hora = data_hora;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((data_hora == null) ? 0 : data_hora.hashCode());
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
		if (data_hora == null) {
			if (other.data_hora != null)
				return false;
		} else if (!data_hora.equals(other.data_hora))
			return false;
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
