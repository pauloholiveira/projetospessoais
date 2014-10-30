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
import javax.persistence.JoinTable;
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
@Table(name = "produto_categorias")
@NamedQueries({
    @NamedQuery(name = "ProdutoCategorias.findAll", query = "SELECT p FROM ProdutoCategorias p")})
public class ProdutoCategorias implements Serializable, EntityGenerica {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "id_pai")
    private int idPai;
    @JoinTable(name = "material_categoria", joinColumns = {
        @JoinColumn(name = "id_categoria", referencedColumnName = "ID")}, inverseJoinColumns = {
        @JoinColumn(name = "id_material", referencedColumnName = "ID")})
    @ManyToMany
    private List<Material> materialList;
    @JoinTable(name = "colecao_categoria", joinColumns = {
        @JoinColumn(name = "id_categoria", referencedColumnName = "ID")}, inverseJoinColumns = {
        @JoinColumn(name = "id_colecao", referencedColumnName = "ID")})
    @ManyToMany
    private List<Colecoes> colecoesList;
    @JoinTable(name = "cor_categoria", joinColumns = {
        @JoinColumn(name = "id_categoria", referencedColumnName = "ID")}, inverseJoinColumns = {
        @JoinColumn(name = "id_cor", referencedColumnName = "id")})
    @ManyToMany
    private List<Cores> coresList;
    @JoinTable(name = "tamanho_categoria", joinColumns = {
        @JoinColumn(name = "id_categoria", referencedColumnName = "ID")}, inverseJoinColumns = {
        @JoinColumn(name = "id_tamanho", referencedColumnName = "id")})
    @ManyToMany
    private List<Tamanhos> tamanhosList;
    @JoinTable(name = "marca_categoria", joinColumns = {
        @JoinColumn(name = "id_categoria", referencedColumnName = "ID")}, inverseJoinColumns = {
        @JoinColumn(name = "id_marca", referencedColumnName = "ID")})
    @ManyToMany
    private List<Marcas> marcasList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produtoCategorias")
    private List<Produto> produtoList;

    public ProdutoCategorias() {
    }

    public ProdutoCategorias(Integer id) {
        this.id = id;
    }

    public ProdutoCategorias(Integer id, String descricao, int idPai) {
        this.id = id;
        this.descricao = descricao;
        this.idPai = idPai;
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

    public int getIdPai() {
        return idPai;
    }

    public void setIdPai(int idPai) {
        this.idPai = idPai;
    }

    public List<Material> getMaterialList() {
        return materialList;
    }

    public void setMaterialList(List<Material> materialList) {
        this.materialList = materialList;
    }

    public List<Colecoes> getColecoesList() {
        return colecoesList;
    }

    public void setColecoesList(List<Colecoes> colecoesList) {
        this.colecoesList = colecoesList;
    }

    public List<Cores> getCoresList() {
        return coresList;
    }

    public void setCoresList(List<Cores> coresList) {
        this.coresList = coresList;
    }

    public List<Tamanhos> getTamanhosList() {
        return tamanhosList;
    }

    public void setTamanhosList(List<Tamanhos> tamanhosList) {
        this.tamanhosList = tamanhosList;
    }

    public List<Marcas> getMarcasList() {
        return marcasList;
    }

    public void setMarcasList(List<Marcas> marcasList) {
        this.marcasList = marcasList;
    }

    public List<Produto> getProdutoList() {
        return produtoList;
    }

    public void setProdutoList(List<Produto> produtoList) {
        this.produtoList = produtoList;
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
        if (!(object instanceof ProdutoCategorias)) {
            return false;
        }
        ProdutoCategorias other = (ProdutoCategorias) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ProdutoCategorias[id=" + id + "]";
    }

}
