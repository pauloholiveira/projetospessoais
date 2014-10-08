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
@Table(name = "item_vendas")
@NamedQueries({
    @NamedQuery(name = "ItemVendas.findAll", query = "SELECT i FROM ItemVendas i"),
    @NamedQuery(name = "ItemVendas.findById", query = "SELECT i FROM ItemVendas i WHERE i.id = :id"),
    @NamedQuery(name = "ItemVendas.findByQtdProduto", query = "SELECT i FROM ItemVendas i WHERE i.qtdProduto = :qtdProduto"),
    @NamedQuery(name = "ItemVendas.findByTotalItem", query = "SELECT i FROM ItemVendas i WHERE i.totalItem = :totalItem")})
public class ItemVendas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Column(name = "qtd_produto")
    private Integer qtdProduto;
    @Column(name = "total_item")
    private Long totalItem;
    @JoinColumn(name = "id_venda", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Vendas vendas;
    @JoinColumn(name = "id_produto", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Produto produto;

    public ItemVendas() {
    }

    public ItemVendas(Long id) {
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

    public Vendas getVendas() {
        return vendas;
    }

    public void setVendas(Vendas vendas) {
        this.vendas = vendas;
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
        if (!(object instanceof ItemVendas)) {
            return false;
        }
        ItemVendas other = (ItemVendas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "teste.ItemVendas[id=" + id + "]";
    }

}
