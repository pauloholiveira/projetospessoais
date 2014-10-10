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
@Table(name = "golas")
@NamedQueries({
    @NamedQuery(name = "Golas.findAll", query = "SELECT g FROM Golas g"),
    @NamedQuery(name = "Golas.findById", query = "SELECT g FROM Golas g WHERE g.id = :id"),
    @NamedQuery(name = "Golas.findByDescricao", query = "SELECT g FROM Golas g WHERE g.descricao = :descricao")})
public class Golas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "golas")
    private List<Vestuario> vestuarioList;

    public Golas() {
    }

    public Golas(Integer id) {
        this.id = id;
    }

    public Golas(Integer id, String descricao) {
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

    public List<Vestuario> getVestuarioList() {
        return vestuarioList;
    }

    public void setVestuarioList(List<Vestuario> vestuarioList) {
        this.vestuarioList = vestuarioList;
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
        if (!(object instanceof Golas)) {
            return false;
        }
        Golas other = (Golas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Golas[id=" + id + "]";
    }

}
