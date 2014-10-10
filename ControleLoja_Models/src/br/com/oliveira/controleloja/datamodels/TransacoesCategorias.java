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
@Table(name = "transacoes_categorias")
@NamedQueries({
    @NamedQuery(name = "TransacoesCategorias.findAll", query = "SELECT t FROM TransacoesCategorias t"),
    @NamedQuery(name = "TransacoesCategorias.findById", query = "SELECT t FROM TransacoesCategorias t WHERE t.id = :id"),
    @NamedQuery(name = "TransacoesCategorias.findByDescricao", query = "SELECT t FROM TransacoesCategorias t WHERE t.descricao = :descricao")})
public class TransacoesCategorias implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(mappedBy = "transacoesCategorias")
    private List<Transacao> transacaoList;

    public TransacoesCategorias() {
    }

    public TransacoesCategorias(Integer id) {
        this.id = id;
    }

    public TransacoesCategorias(Integer id, String descricao) {
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
        if (!(object instanceof TransacoesCategorias)) {
            return false;
        }
        TransacoesCategorias other = (TransacoesCategorias) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.TransacoesCategorias[id=" + id + "]";
    }

}
