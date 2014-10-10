/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
@Table(name = "produtos_categorias")
@NamedQueries({
    @NamedQuery(name = "ProdutosCategorias.findAll", query = "SELECT p FROM ProdutosCategorias p"),
    @NamedQuery(name = "ProdutosCategorias.findById", query = "SELECT p FROM ProdutosCategorias p WHERE p.id = :id"),
    @NamedQuery(name = "ProdutosCategorias.findByDescricao", query = "SELECT p FROM ProdutosCategorias p WHERE p.descricao = :descricao")})
public class ProdutosCategorias implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produtosCategorias")
    private List<Produto> produtoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produtosCategorias")
    private List<ProdutosSubcategoria> produtosSubcategoriaList;

    public ProdutosCategorias() {
    }

    public ProdutosCategorias(Integer id) {
        this.id = id;
    }

    public ProdutosCategorias(Integer id, String descricao) {
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

    public List<Produto> getProdutoList() {
        return produtoList;
    }

    public void setProdutoList(List<Produto> produtoList) {
        this.produtoList = produtoList;
    }

    public List<ProdutosSubcategoria> getProdutosSubcategoriaList() {
        return produtosSubcategoriaList;
    }

    public void setProdutosSubcategoriaList(List<ProdutosSubcategoria> produtosSubcategoriaList) {
        this.produtosSubcategoriaList = produtosSubcategoriaList;
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
        if (!(object instanceof ProdutosCategorias)) {
            return false;
        }
        ProdutosCategorias other = (ProdutosCategorias) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ProdutosCategorias[id=" + id + "]";
    }

}
