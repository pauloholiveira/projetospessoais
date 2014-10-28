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
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "tamanhos")
@NamedQueries({
    @NamedQuery(name = "Tamanhos.findAll", query = "SELECT t FROM Tamanhos t")})
public class Tamanhos implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @ManyToMany(mappedBy = "tamanhosList")
    private List<ProdutoCategorias> produtoCategoriasList;
    @ManyToMany(mappedBy = "tamanhosList")
    private List<Produto> produtoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tamanhos")
    private List<ProdutoRoupasSuperiores> produtoRoupasSuperioresList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tamanhos")
    private List<ProdutoCalcados> produtoCalcadosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tamanhos")
    private List<ProdutoRoupasInferiores> produtoRoupasInferioresList;

    public Tamanhos() {
    }

    public Tamanhos(Integer id) {
        this.id = id;
    }

    public Tamanhos(Integer id, String descricao) {
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

    public List<ProdutoCategorias> getProdutoCategoriasList() {
        return produtoCategoriasList;
    }

    public void setProdutoCategoriasList(List<ProdutoCategorias> produtoCategoriasList) {
        this.produtoCategoriasList = produtoCategoriasList;
    }

    public List<Produto> getProdutoList() {
        return produtoList;
    }

    public void setProdutoList(List<Produto> produtoList) {
        this.produtoList = produtoList;
    }

    public List<ProdutoRoupasSuperiores> getProdutoRoupasSuperioresList() {
        return produtoRoupasSuperioresList;
    }

    public void setProdutoRoupasSuperioresList(List<ProdutoRoupasSuperiores> produtoRoupasSuperioresList) {
        this.produtoRoupasSuperioresList = produtoRoupasSuperioresList;
    }

    public List<ProdutoCalcados> getProdutoCalcadosList() {
        return produtoCalcadosList;
    }

    public void setProdutoCalcadosList(List<ProdutoCalcados> produtoCalcadosList) {
        this.produtoCalcadosList = produtoCalcadosList;
    }

    public List<ProdutoRoupasInferiores> getProdutoRoupasInferioresList() {
        return produtoRoupasInferioresList;
    }

    public void setProdutoRoupasInferioresList(List<ProdutoRoupasInferiores> produtoRoupasInferioresList) {
        this.produtoRoupasInferioresList = produtoRoupasInferioresList;
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
        if (!(object instanceof Tamanhos)) {
            return false;
        }
        Tamanhos other = (Tamanhos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Tamanhos[id=" + id + "]";
    }

}
