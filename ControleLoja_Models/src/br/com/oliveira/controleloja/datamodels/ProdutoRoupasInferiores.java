/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "produto_roupas_inferiores")
@NamedQueries({
    @NamedQuery(name = "ProdutoRoupasInferiores.findAll", query = "SELECT p FROM ProdutoRoupasInferiores p")})
public class ProdutoRoupasInferiores implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "ID", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Produto produto;
    @JoinColumn(name = "id_tamanho", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Tamanhos tamanhos;
    @JoinColumn(name = "id_colecao", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Colecoes colecoes;

    public ProdutoRoupasInferiores() {
    }

    public ProdutoRoupasInferiores(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Tamanhos getTamanhos() {
        return tamanhos;
    }

    public void setTamanhos(Tamanhos tamanhos) {
        this.tamanhos = tamanhos;
    }

    public Colecoes getColecoes() {
        return colecoes;
    }

    public void setColecoes(Colecoes colecoes) {
        this.colecoes = colecoes;
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
        if (!(object instanceof ProdutoRoupasInferiores)) {
            return false;
        }
        ProdutoRoupasInferiores other = (ProdutoRoupasInferiores) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ProdutoRoupasInferiores[id=" + id + "]";
    }

}
