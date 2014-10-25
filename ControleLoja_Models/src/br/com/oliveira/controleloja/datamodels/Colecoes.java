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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "colecoes")
@NamedQueries({
    @NamedQuery(name = "Colecoes.findAll", query = "SELECT c FROM Colecoes c")})
public class Colecoes implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(mappedBy = "colecoes")
    private List<ProdutoRoupasSuperiores> produtoRoupasSuperioresList;
    @JoinColumn(name = "id_categoria", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutoCategorias produtoCategorias;
    @OneToMany(mappedBy = "colecoes")
    private List<ProdutoAcessorios> produtoAcessoriosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "colecoes")
    private List<ProdutoRoupasInferiores> produtoRoupasInferioresList;

    public Colecoes() {
    }

    public Colecoes(Integer id) {
        this.id = id;
    }

    public Colecoes(Integer id, String descricao) {
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

    public List<ProdutoRoupasSuperiores> getProdutoRoupasSuperioresList() {
        return produtoRoupasSuperioresList;
    }

    public void setProdutoRoupasSuperioresList(List<ProdutoRoupasSuperiores> produtoRoupasSuperioresList) {
        this.produtoRoupasSuperioresList = produtoRoupasSuperioresList;
    }

    public ProdutoCategorias getProdutoCategorias() {
        return produtoCategorias;
    }

    public void setProdutoCategorias(ProdutoCategorias produtoCategorias) {
        this.produtoCategorias = produtoCategorias;
    }

    public List<ProdutoAcessorios> getProdutoAcessoriosList() {
        return produtoAcessoriosList;
    }

    public void setProdutoAcessoriosList(List<ProdutoAcessorios> produtoAcessoriosList) {
        this.produtoAcessoriosList = produtoAcessoriosList;
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
        if (!(object instanceof Colecoes)) {
            return false;
        }
        Colecoes other = (Colecoes) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Colecoes[id=" + id + "]";
    }

}
