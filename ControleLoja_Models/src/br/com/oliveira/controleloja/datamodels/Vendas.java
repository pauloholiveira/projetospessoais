/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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
    @NamedQuery(name = "Vendas.findByDataVenda", query = "SELECT v FROM Vendas v WHERE v.dataVenda = :dataVenda"),
    @NamedQuery(name = "Vendas.findByValor", query = "SELECT v FROM Vendas v WHERE v.valor = :valor"),
    @NamedQuery(name = "Vendas.findByQtdParcelas", query = "SELECT v FROM Vendas v WHERE v.qtdParcelas = :qtdParcelas")})
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
    @Basic(optional = false)
    @Column(name = "valor")
    private long valor;
    @Basic(optional = false)
    @Column(name = "qtd_parcelas")
    private int qtdParcelas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "vendas")
    private List<Parcelas> parcelasList;
    @JoinColumn(name = "status_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private VendaStatus vendaStatus;
    @JoinColumn(name = "cliente_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Cliente cliente;
    @JoinColumn(name = "forma_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private FormasPagamento formasPagamento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "vendas")
    private List<ItemVendas> itemVendasList;

    public Vendas() {
    }

    public Vendas(Integer id) {
        this.id = id;
    }

    public Vendas(Integer id, Date dataVenda, long valor, int qtdParcelas) {
        this.id = id;
        this.dataVenda = dataVenda;
        this.valor = valor;
        this.qtdParcelas = qtdParcelas;
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

    public long getValor() {
        return valor;
    }

    public void setValor(long valor) {
        this.valor = valor;
    }

    public int getQtdParcelas() {
        return qtdParcelas;
    }

    public void setQtdParcelas(int qtdParcelas) {
        this.qtdParcelas = qtdParcelas;
    }

    public List<Parcelas> getParcelasList() {
        return parcelasList;
    }

    public void setParcelasList(List<Parcelas> parcelasList) {
        this.parcelasList = parcelasList;
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

    public FormasPagamento getFormasPagamento() {
        return formasPagamento;
    }

    public void setFormasPagamento(FormasPagamento formasPagamento) {
        this.formasPagamento = formasPagamento;
    }

    public List<ItemVendas> getItemVendasList() {
        return itemVendasList;
    }

    public void setItemVendasList(List<ItemVendas> itemVendasList) {
        this.itemVendasList = itemVendasList;
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
        return "br.com.oliveira.controleloja.datamodels.Vendas[id=" + id + "]";
    }

}
