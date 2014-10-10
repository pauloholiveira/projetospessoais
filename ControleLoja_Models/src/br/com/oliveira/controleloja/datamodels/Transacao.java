/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "transacao")
@NamedQueries({
    @NamedQuery(name = "Transacao.findAll", query = "SELECT t FROM Transacao t"),
    @NamedQuery(name = "Transacao.findById", query = "SELECT t FROM Transacao t WHERE t.id = :id"),
    @NamedQuery(name = "Transacao.findByValor", query = "SELECT t FROM Transacao t WHERE t.valor = :valor"),
    @NamedQuery(name = "Transacao.findByDataTransacao", query = "SELECT t FROM Transacao t WHERE t.dataTransacao = :dataTransacao"),
    @NamedQuery(name = "Transacao.findByIdTipoTransacao", query = "SELECT t FROM Transacao t WHERE t.idTipoTransacao = :idTipoTransacao")})
public class Transacao implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "valor")
    private long valor;
    @Basic(optional = false)
    @Column(name = "data_transacao")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataTransacao;
    @Basic(optional = false)
    @Column(name = "id_tipo_transacao")
    private int idTipoTransacao;
    @JoinColumn(name = "id_categoria", referencedColumnName = "id")
    @ManyToOne
    private TransacoesCategorias transacoesCategorias;
    @JoinColumn(name = "id_conta", referencedColumnName = "id")
    @ManyToOne
    private Contas contas;

    public Transacao() {
    }

    public Transacao(Integer id) {
        this.id = id;
    }

    public Transacao(Integer id, long valor, Date dataTransacao, int idTipoTransacao) {
        this.id = id;
        this.valor = valor;
        this.dataTransacao = dataTransacao;
        this.idTipoTransacao = idTipoTransacao;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public long getValor() {
        return valor;
    }

    public void setValor(long valor) {
        this.valor = valor;
    }

    public Date getDataTransacao() {
        return dataTransacao;
    }

    public void setDataTransacao(Date dataTransacao) {
        this.dataTransacao = dataTransacao;
    }

    public int getIdTipoTransacao() {
        return idTipoTransacao;
    }

    public void setIdTipoTransacao(int idTipoTransacao) {
        this.idTipoTransacao = idTipoTransacao;
    }

    public TransacoesCategorias getTransacoesCategorias() {
        return transacoesCategorias;
    }

    public void setTransacoesCategorias(TransacoesCategorias transacoesCategorias) {
        this.transacoesCategorias = transacoesCategorias;
    }

    public Contas getContas() {
        return contas;
    }

    public void setContas(Contas contas) {
        this.contas = contas;
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
        if (!(object instanceof Transacao)) {
            return false;
        }
        Transacao other = (Transacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Transacao[id=" + id + "]";
    }

}
