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
@Table(name = "acessorios_tipos")
@NamedQueries({
    @NamedQuery(name = "AcessoriosTipos.findAll", query = "SELECT a FROM AcessoriosTipos a")})
public class AcessoriosTipos implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(mappedBy = "acessoriosTipos")
    private List<ProdutoAcessorios> produtoAcessoriosList;

    public AcessoriosTipos() {
    }

    public AcessoriosTipos(Integer id) {
        this.id = id;
    }

    public AcessoriosTipos(Integer id, String descricao) {
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

    public List<ProdutoAcessorios> getProdutoAcessoriosList() {
        return produtoAcessoriosList;
    }

    public void setProdutoAcessoriosList(List<ProdutoAcessorios> produtoAcessoriosList) {
        this.produtoAcessoriosList = produtoAcessoriosList;
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
        if (!(object instanceof AcessoriosTipos)) {
            return false;
        }
        AcessoriosTipos other = (AcessoriosTipos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.AcessoriosTipos[id=" + id + "]";
    }

}
