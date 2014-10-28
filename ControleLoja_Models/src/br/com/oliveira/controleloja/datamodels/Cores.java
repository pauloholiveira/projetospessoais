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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "cores")
@NamedQueries({
    @NamedQuery(name = "Cores.findAll", query = "SELECT c FROM Cores c")})
public class Cores implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @JoinTable(name = "produtos_cores", joinColumns = {
        @JoinColumn(name = "id_cor", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_produto", referencedColumnName = "id")})
    @ManyToMany
    private List<Produto> produtoList;
    @ManyToMany(mappedBy = "coresList")
    private List<ProdutoCategorias> produtoCategoriasList;

    public Cores() {
    }

    public Cores(Integer id) {
        this.id = id;
    }

    public Cores(Integer id, String descricao) {
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

    public List<ProdutoCategorias> getProdutoCategoriasList() {
        return produtoCategoriasList;
    }

    public void setProdutoCategoriasList(List<ProdutoCategorias> produtoCategoriasList) {
        this.produtoCategoriasList = produtoCategoriasList;
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
        if (!(object instanceof Cores)) {
            return false;
        }
        Cores other = (Cores) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Cores[id=" + id + "]";
    }

}