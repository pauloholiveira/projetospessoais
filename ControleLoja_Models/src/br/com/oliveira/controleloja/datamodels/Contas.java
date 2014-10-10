/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "contas")
@NamedQueries({
    @NamedQuery(name = "Contas.findAll", query = "SELECT c FROM Contas c"),
    @NamedQuery(name = "Contas.findById", query = "SELECT c FROM Contas c WHERE c.id = :id"),
    @NamedQuery(name = "Contas.findByNumero", query = "SELECT c FROM Contas c WHERE c.numero = :numero"),
    @NamedQuery(name = "Contas.findByAgencia", query = "SELECT c FROM Contas c WHERE c.agencia = :agencia"),
    @NamedQuery(name = "Contas.findByProprietario", query = "SELECT c FROM Contas c WHERE c.proprietario = :proprietario"),
    @NamedQuery(name = "Contas.findByBanco", query = "SELECT c FROM Contas c WHERE c.banco = :banco")})
public class Contas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "numero")
    private String numero;
    @Basic(optional = false)
    @Column(name = "agencia")
    private String agencia;
    @Column(name = "proprietario")
    private String proprietario;
    @Basic(optional = false)
    @Column(name = "banco")
    private String banco;
    @OneToMany(mappedBy = "contas")
    private List<Transacao> transacaoList;

    public Contas() {
    }

    public Contas(Integer id) {
        this.id = id;
    }

    public Contas(Integer id, String numero, String agencia, String banco) {
        this.id = id;
        this.numero = numero;
        this.agencia = agencia;
        this.banco = banco;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getAgencia() {
        return agencia;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public String getProprietario() {
        return proprietario;
    }

    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public List<Transacao> getTransacaoList() {
        return transacaoList;
    }

    public void setTransacaoList(List<Transacao> transacaoList) {
        this.transacaoList = transacaoList;
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
        if (!(object instanceof Contas)) {
            return false;
        }
        Contas other = (Contas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Contas[id=" + id + "]";
    }

}
