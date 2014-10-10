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
@Table(name = "estoque_operacao")
@NamedQueries({
    @NamedQuery(name = "EstoqueOperacao.findAll", query = "SELECT e FROM EstoqueOperacao e"),
    @NamedQuery(name = "EstoqueOperacao.findById", query = "SELECT e FROM EstoqueOperacao e WHERE e.id = :id"),
    @NamedQuery(name = "EstoqueOperacao.findByQtdProdutos", query = "SELECT e FROM EstoqueOperacao e WHERE e.qtdProdutos = :qtdProdutos"),
    @NamedQuery(name = "EstoqueOperacao.findByDataOperacao", query = "SELECT e FROM EstoqueOperacao e WHERE e.dataOperacao = :dataOperacao")})
public class EstoqueOperacao implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "qtd_produtos")
    private int qtdProdutos;
    @Column(name = "data_operacao")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataOperacao;
    @JoinColumn(name = "fluxo_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private EstoqueFluxo estoqueFluxo;
    @JoinColumn(name = "id_produto", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Produto produto;

    public EstoqueOperacao() {
    }

    public EstoqueOperacao(Integer id) {
        this.id = id;
    }

    public EstoqueOperacao(Integer id, int qtdProdutos) {
        this.id = id;
        this.qtdProdutos = qtdProdutos;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getQtdProdutos() {
        return qtdProdutos;
    }

    public void setQtdProdutos(int qtdProdutos) {
        this.qtdProdutos = qtdProdutos;
    }

    public Date getDataOperacao() {
        return dataOperacao;
    }

    public void setDataOperacao(Date dataOperacao) {
        this.dataOperacao = dataOperacao;
    }

    public EstoqueFluxo getEstoqueFluxo() {
        return estoqueFluxo;
    }

    public void setEstoqueFluxo(EstoqueFluxo estoqueFluxo) {
        this.estoqueFluxo = estoqueFluxo;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
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
        if (!(object instanceof EstoqueOperacao)) {
            return false;
        }
        EstoqueOperacao other = (EstoqueOperacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.EstoqueOperacao[id=" + id + "]";
    }

}
