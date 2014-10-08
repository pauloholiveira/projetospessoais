package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "vendas")
@NamedQueries({
    @NamedQuery(name = "Vendas.findAll", query = "SELECT v FROM Vendas v"),
    @NamedQuery(name = "Vendas.findById", query = "SELECT v FROM Vendas v WHERE v.id = :id"),
    @NamedQuery(name = "Vendas.findByDataVenda", query = "SELECT v FROM Vendas v WHERE v.dataVenda = :dataVenda")})
public class Vendas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "data\u001f_venda")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataVenda;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "vendas")
    private List<ItemVendas> itemVendasList;
    @JoinColumn(name = "status_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private VendaStatus vendaStatus;
    @JoinColumn(name = "cliente_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Cliente cliente;

    public Vendas() {
    }

    public Vendas(Integer id) {
        this.id = id;
    }

    public Vendas(Integer id, Date dataVenda) {
        this.id = id;
        this.dataVenda = dataVenda;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(Date dataVenda) {
        this.dataVenda = dataVenda;
    }

    public List<ItemVendas> getItemVendasList() {
        return itemVendasList;
    }

    public void setItemVendasList(List<ItemVendas> itemVendasList) {
        this.itemVendasList = itemVendasList;
    }

    public VendaStatus getVendaStatus() {
        return vendaStatus;
    }

    public void setVendaStatus(VendaStatus vendaStatus) {
        this.vendaStatus = vendaStatus;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
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
        if (!(object instanceof Vendas)) {
            return false;
        }
        Vendas other = (Vendas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "teste.Vendas[id=" + id + "]";
    }

}
