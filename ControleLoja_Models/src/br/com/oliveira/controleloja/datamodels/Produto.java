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
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
@Table(name = "produto")
@NamedQueries({
    @NamedQuery(name = "Produto.findAll", query = "SELECT p FROM Produto p"),
    @NamedQuery(name = "Produto.findById", query = "SELECT p FROM Produto p WHERE p.id = :id"),
    @NamedQuery(name = "Produto.findByDescricao", query = "SELECT p FROM Produto p WHERE p.descricao = :descricao"),
    @NamedQuery(name = "Produto.findByDataCadastro", query = "SELECT p FROM Produto p WHERE p.dataCadastro = :dataCadastro"),
    @NamedQuery(name = "Produto.findByObservacoes", query = "SELECT p FROM Produto p WHERE p.observacoes = :observacoes"),
    @NamedQuery(name = "Produto.findByCodigoBarras", query = "SELECT p FROM Produto p WHERE p.codigoBarras = :codigoBarras"),
    @NamedQuery(name = "Produto.findByPreco", query = "SELECT p FROM Produto p WHERE p.preco = :preco"),
    @NamedQuery(name = "Produto.findByDescricaoDetalhes", query = "SELECT p FROM Produto p WHERE p.descricaoDetalhes = :descricaoDetalhes")})
@Inheritance(strategy=InheritanceType.JOINED)
public class Produto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "data_cadastro")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCadastro;
    @Column(name = "observacoes")
    private String observacoes;
    @Column(name = "codigo_barras")
    private String codigoBarras;
    @Basic(optional = false)
    @Column(name = "preco")
    private long preco;
    @Column(name = "descricao_detalhes")
    private String descricaoDetalhes;
    @JoinTable(name = "produtos_cores", joinColumns = {
        @JoinColumn(name = "id_produto", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_cor", referencedColumnName = "id")})
    @ManyToMany
    private List<Cores> coresList;
    @JoinTable(name = "produtos_formas_pagamentos", joinColumns = {
        @JoinColumn(name = "id_produto", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_forma_pagamento", referencedColumnName = "ID")})
    @ManyToMany
    private List<FormasPagamento> formasPagamentoList;
    @ManyToMany(mappedBy = "produtoList")
    private List<Tamanhos> tamanhosList;
    @JoinTable(name = "produtos_tecidos", joinColumns = {
        @JoinColumn(name = "id_produto", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_tecidos", referencedColumnName = "id")})
    @ManyToMany
    private List<Tecidos> tecidosList;
    @JoinColumn(name = "id_subcategoria", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutosSubcategoria produtosSubcategoria;
    @JoinColumn(name = "id_status", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutoStatus produtoStatus;
    @JoinColumn(name = "id_categoria", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutosCategorias produtosCategorias;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<ItemCompras> itemComprasList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<EstoqueOperacao> estoqueOperacaoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<ItemVendas> itemVendasList;

    public Produto() {
    }

    public Produto(Integer id) {
        this.id = id;
    }

    public Produto(Integer id, String descricao, Date dataCadastro, long preco) {
        this.id = id;
        this.descricao = descricao;
        this.dataCadastro = dataCadastro;
        this.preco = preco;
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

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public String getObservacoes() {
        return observacoes;
    }

    public void setObservacoes(String observacoes) {
        this.observacoes = observacoes;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    public long getPreco() {
        return preco;
    }

    public void setPreco(long preco) {
        this.preco = preco;
    }

    public String getDescricaoDetalhes() {
        return descricaoDetalhes;
    }

    public void setDescricaoDetalhes(String descricaoDetalhes) {
        this.descricaoDetalhes = descricaoDetalhes;
    }

    public List<Cores> getCoresList() {
        return coresList;
    }

    public void setCoresList(List<Cores> coresList) {
        this.coresList = coresList;
    }

    public List<FormasPagamento> getFormasPagamentoList() {
        return formasPagamentoList;
    }

    public void setFormasPagamentoList(List<FormasPagamento> formasPagamentoList) {
        this.formasPagamentoList = formasPagamentoList;
    }

    public List<Tamanhos> getTamanhosList() {
        return tamanhosList;
    }

    public void setTamanhosList(List<Tamanhos> tamanhosList) {
        this.tamanhosList = tamanhosList;
    }

    public List<Tecidos> getTecidosList() {
        return tecidosList;
    }

    public void setTecidosList(List<Tecidos> tecidosList) {
        this.tecidosList = tecidosList;
    }

    public ProdutosSubcategoria getProdutosSubcategoria() {
        return produtosSubcategoria;
    }

    public void setProdutosSubcategoria(ProdutosSubcategoria produtosSubcategoria) {
        this.produtosSubcategoria = produtosSubcategoria;
    }

    public ProdutoStatus getProdutoStatus() {
        return produtoStatus;
    }

    public void setProdutoStatus(ProdutoStatus produtoStatus) {
        this.produtoStatus = produtoStatus;
    }

    public ProdutosCategorias getProdutosCategorias() {
        return produtosCategorias;
    }

    public void setProdutosCategorias(ProdutosCategorias produtosCategorias) {
        this.produtosCategorias = produtosCategorias;
    }

    public List<ItemCompras> getItemComprasList() {
        return itemComprasList;
    }

    public void setItemComprasList(List<ItemCompras> itemComprasList) {
        this.itemComprasList = itemComprasList;
    }

    public List<EstoqueOperacao> getEstoqueOperacaoList() {
        return estoqueOperacaoList;
    }

    public void setEstoqueOperacaoList(List<EstoqueOperacao> estoqueOperacaoList) {
        this.estoqueOperacaoList = estoqueOperacaoList;
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
        if (!(object instanceof Produto)) {
            return false;
        }
        Produto other = (Produto) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Produto[id=" + id + "]";
    }

}
