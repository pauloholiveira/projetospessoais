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
@Table(name = "produto_acessorios")
@NamedQueries({
    @NamedQuery(name = "ProdutoAcessorios.findAll", query = "SELECT p FROM ProdutoAcessorios p")})
public class ProdutoAcessorios implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "id_tipo_acessorio", referencedColumnName = "ID")
    @ManyToOne
    private AcessoriosTipos acessoriosTipos;
    @JoinColumn(name = "ID", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Produto produto;
    @JoinColumn(name = "id_colecao", referencedColumnName = "ID")
    @ManyToOne
    private Colecoes colecoes;

    public ProdutoAcessorios() {
    }

    public ProdutoAcessorios(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public AcessoriosTipos getAcessoriosTipos() {
        return acessoriosTipos;
    }

    public void setAcessoriosTipos(AcessoriosTipos acessoriosTipos) {
        this.acessoriosTipos = acessoriosTipos;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
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
        if (!(object instanceof ProdutoAcessorios)) {
            return false;
        }
        ProdutoAcessorios other = (ProdutoAcessorios) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ProdutoAcessorios[id=" + id + "]";
    }

}
