package br.com.paulo.controlehoras.model;

import java.io.Serializable;
//import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;

@Entity
@Table(name = "operacao")
public class Operacao implements Serializable {
	private static final long serialVersionUID = 5416809568067185602L;

	@EmbeddedId
	private OperacaoPK operacaoPK;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="tipo", referencedColumnName="id", insertable=false, updatable=false)
	private TipoOperacao tipoOperacao;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id_expediente", referencedColumnName="id", insertable=false, updatable=false)
	private Expediente expediente;
	
	public Operacao() {
	}

	public Operacao(OperacaoPK operacaoPK) {
		this.operacaoPK = operacaoPK;
	}

	public Operacao(int tipo, int idExpediente) {
		this.operacaoPK = new OperacaoPK(tipo, idExpediente);
	}

	public OperacaoPK getOperacaoPK() {
		return operacaoPK;
	}

	public void setOperacaoPK(OperacaoPK operacaoPK) {
		this.operacaoPK = operacaoPK;
	}

	public TipoOperacao getTipoOperacao() {
		return tipoOperacao;
	}

	public void setTipoOperacao(TipoOperacao tipoOperacao) {
		this.tipoOperacao = tipoOperacao;
	}
	
	public Expediente getExpediente() {
		return expediente;
	}

	public void setExpediente(Expediente expediente) {
		this.expediente = expediente;
	}
	
	@Override
	public boolean equals(Object object) {
		if (!(object instanceof Operacao)) {
			return false;
		}
		Operacao other = (Operacao) object;
		if ((this.operacaoPK == null && other.operacaoPK != null)
				|| (this.operacaoPK != null && !this.operacaoPK
						.equals(other.operacaoPK))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "br.com.paulo.model.Operacao[ operacaoPK=" + operacaoPK + " ]";
	}
}
