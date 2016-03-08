package br.com.paulo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tipo_operacao", catalog="controle_horas", schema="")
public class TipoOperacao implements Serializable {
	private static final long serialVersionUID = 5225702070532400104L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Basic(optional=false)
    @Column(name="id")
	private Integer id;
	
	@Basic(optional=false)
    @Column(name="descricao")
	private String descricao;

	@OneToMany(cascade=CascadeType.ALL, mappedBy="tipoOperacao")
	private List<Operacao> operacoes;
		
	
	public TipoOperacao() { }
	
	public TipoOperacao(Integer id) {
		this.id = id;
	}

	public TipoOperacao(Integer id, String descricao) {
		this.id = id;
		this.descricao = descricao;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public List<Operacao> getOperacoes() {
		return operacoes;
	}

	public void setOperacoes(List<Operacao> operacoes) {
		this.operacoes = operacoes;
	}
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoOperacao)) {
            return false;
        }
        TipoOperacao other = (TipoOperacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.paulo.model.TipoOperacao[ id=" + id + " ]";
    }
}
