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
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "item_compras")
@NamedQueries({
    @NamedQuery(name = "ItemCompras.findAll", query = "SELECT i FROM ItemCompras i"),
    @NamedQuery(name = "ItemCompras.findById", query = "SELECT i FROM ItemCompras i WHERE i.id = :id"),
    @NamedQuery(name = "ItemCompras.findByQtdProduto", query = "SELECT i FROM ItemCompras i WHERE i.qtdProduto = :qtdProduto"),
    @NamedQuery(name = "ItemCompras.findByTotalItem", query = "SELECT i FROM ItemCompras i WHERE i.totalItem = :totalItem")})
public class ItemCompras implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Column(name = "qtd_produto")
    private Integer qtdProduto;
    @Column(name = "total_item")
    private Long totalItem;
    @JoinColumn(name = "id_compra", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Compra compra;
    @JoinColumn(name = "id_produto", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Produto produto;

    public ItemCompras() {
    }

    public ItemCompras(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getQtdProduto() {
        return qtdProduto;
    }

    public void setQtdProduto(Integer qtdProduto) {
        this.qtdProduto = qtdProduto;
    }

    public Long getTotalItem() {
        return totalItem;
    }

    public void setTotalItem(Long totalItem) {
        this.totalItem = totalItem;
    }

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
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
        if (!(object instanceof ItemCompras)) {
            return false;
        }
        ItemCompras other = (ItemCompras) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.ItemCompras[id=" + id + "]";
    }

}
