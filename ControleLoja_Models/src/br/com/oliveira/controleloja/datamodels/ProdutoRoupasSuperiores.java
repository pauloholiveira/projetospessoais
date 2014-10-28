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
@Table(name = "produto_roupas_superiores")
@NamedQueries({
    @NamedQuery(name = "ProdutoRoupasSuperiores.findAll", query = "SELECT p FROM ProdutoRoupasSuperiores p")})
public class ProdutoRoupasSuperiores implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "id_tamanhos", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Tamanhos tamanhos;
    @JoinColumn(name = "ID", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Produto produto;
    @JoinColumn(name = "id_manga", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Mangas mangas;
    @JoinColumn(name = "id_gola", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Golas golas;
    @JoinColumn(name = "id_colecao", referencedColumnName = "ID")
    @ManyToOne
    private Colecoes colecoes;

    public ProdutoRoupasSuperiores() {
    }

    public ProdutoRoupasSuperiores(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Tamanhos getTamanhos() {
        return tamanhos;
    }

    public void setTamanhos(Tamanhos tamanhos) {
        this.tamanhos = tamanhos;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Mangas getMangas() {
        return mangas;
    }

    public void setMangas(Mangas mangas) {
        this.mangas = mangas;
    }

    public Golas getGolas() {
        return golas;
    }

    public void setGolas(Golas golas) {
        this.golas = golas;
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
        if (!(object instanceof ProdutoRoupasSuperiores)) {
            return false;
        }
        ProdutoRoupasSuperiores other = (ProdutoRoupasSuperiores) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ProdutoRoupasSuperiores[id=" + id + "]";
    }

}
