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
@Table(name = "compra")
@NamedQueries({
    @NamedQuery(name = "Compra.findAll", query = "SELECT c FROM Compra c"),
    @NamedQuery(name = "Compra.findById", query = "SELECT c FROM Compra c WHERE c.id = :id"),
    @NamedQuery(name = "Compra.findByValor", query = "SELECT c FROM Compra c WHERE c.valor = :valor"),
    @NamedQuery(name = "Compra.findByData", query = "SELECT c FROM Compra c WHERE c.data = :data"),
    @NamedQuery(name = "Compra.findByQtdParcelas", query = "SELECT c FROM Compra c WHERE c.qtdParcelas = :qtdParcelas")})
public class Compra implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "valor")
    private long valor;
    @Basic(optional = false)
    @Column(name = "data")
    @Temporal(TemporalType.TIMESTAMP)
    private Date data;
    @Basic(optional = false)
    @Column(name = "qtd_parcelas")
    private int qtdParcelas;
    @JoinColumn(name = "status_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private CompraStatus compraStatus;
    @JoinColumn(name = "fornecedor_id", referencedColumnName = "ID")
    @ManyToOne
    private Fornecedor fornecedor;
    @JoinColumn(name = "forma_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private FormasPagamento formasPagamento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "compra")
    private List<ItemCompras> itemComprasList;

    public Compra() {
    }

    public Compra(Integer id) {
        this.id = id;
    }

    public Compra(Integer id, long valor, Date data, int qtdParcelas) {
        this.id = id;
        this.valor = valor;
        this.data = data;
        this.qtdParcelas = qtdParcelas;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public long getValor() {
        return valor;
    }

    public void setValor(long valor) {
        this.valor = valor;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getQtdParcelas() {
        return qtdParcelas;
    }

    public void setQtdParcelas(int qtdParcelas) {
        this.qtdParcelas = qtdParcelas;
    }

    public CompraStatus getCompraStatus() {
        return compraStatus;
    }

    public void setCompraStatus(CompraStatus compraStatus) {
        this.compraStatus = compraStatus;
    }

    public Fornecedor getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public FormasPagamento getFormasPagamento() {
        return formasPagamento;
    }

    public void setFormasPagamento(FormasPagamento formasPagamento) {
        this.formasPagamento = formasPagamento;
    }

    public List<ItemCompras> getItemComprasList() {
        return itemComprasList;
    }

    public void setItemComprasList(List<ItemCompras> itemComprasList) {
        this.itemComprasList = itemComprasList;
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
        if (!(object instanceof Compra)) {
            return false;
        }
        Compra other = (Compra) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "teste.Compra[id=" + id + "]";
    }

}
