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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
    @NamedQuery(name = "Produto.findAll", query = "SELECT p FROM Produto p")})
public class Produto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "data_cadastro")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCadastro;
    @Basic(optional = false)
    @Column(name = "preco_compra")
    private long precoCompra;
    @Column(name = "preco_venda")
    private Long precoVenda;
    @Column(name = "id_marca")
    private Integer idMarca;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Column(name = "descricao_detalhes")
    private String descricaoDetalhes;
    @Basic(optional = false)
    @Column(name = "id_genero")
    private int idGenero;
    @Column(name = "codigo_barras")
    private String codigoBarras;
    @Column(name = "observacoes")
    private String observacoes;
    @ManyToMany(mappedBy = "produtoList")
    private List<Cores> coresList;
    @ManyToMany(mappedBy = "produtoList")
    private List<FormasPagamento> formasPagamentoList;
    @JoinTable(name = "produtos_tamanhos", joinColumns = {
        @JoinColumn(name = "id_produto", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "id_tamanho", referencedColumnName = "id")})
    @ManyToMany
    private List<Tamanhos> tamanhosList;
    @ManyToMany(mappedBy = "produtoList")
    private List<Material> materialList;
    @JoinColumn(name = "id_status", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutoStatus produtoStatus;
    @JoinColumn(name = "id_categoria", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ProdutoCategorias produtoCategorias;
    @OneToMany(mappedBy = "produto")
    private List<Imagens> imagensList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "produto")
    private ProdutoRoupasSuperiores produtoRoupasSuperiores;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<ItemCompras> itemComprasList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<EstoqueOperacao> estoqueOperacaoList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "produto")
    private ProdutoAcessorios produtoAcessorios;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "produto")
    private List<ItemVendas> itemVendasList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "produto")
    private ProdutoCalcados produtoCalcados;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "produto")
    private ProdutoRoupasInferiores produtoRoupasInferiores;

    public Produto() {
    }

    public Produto(Integer id) {
        this.id = id;
    }

    public Produto(Integer id, Date dataCadastro, long precoCompra, String descricao, int idGenero) {
        this.id = id;
        this.dataCadastro = dataCadastro;
        this.precoCompra = precoCompra;
        this.descricao = descricao;
        this.idGenero = idGenero;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public long getPrecoCompra() {
        return precoCompra;
    }

    public void setPrecoCompra(long precoCompra) {
        this.precoCompra = precoCompra;
    }

    public Long getPrecoVenda() {
        return precoVenda;
    }

    public void setPrecoVenda(Long precoVenda) {
        this.precoVenda = precoVenda;
    }

    public Integer getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(Integer idMarca) {
        this.idMarca = idMarca;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricaoDetalhes() {
        return descricaoDetalhes;
    }

    public void setDescricaoDetalhes(String descricaoDetalhes) {
        this.descricaoDetalhes = descricaoDetalhes;
    }

    public int getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(int idGenero) {
        this.idGenero = idGenero;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    public String getObservacoes() {
        return observacoes;
    }

    public void setObservacoes(String observacoes) {
        this.observacoes = observacoes;
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

    public List<Material> getMaterialList() {
        return materialList;
    }

    public void setMaterialList(List<Material> materialList) {
        this.materialList = materialList;
    }

    public ProdutoStatus getProdutoStatus() {
        return produtoStatus;
    }

    public void setProdutoStatus(ProdutoStatus produtoStatus) {
        this.produtoStatus = produtoStatus;
    }

    public ProdutoCategorias getProdutoCategorias() {
        return produtoCategorias;
    }

    public void setProdutoCategorias(ProdutoCategorias produtoCategorias) {
        this.produtoCategorias = produtoCategorias;
    }

    public List<Imagens> getImagensList() {
        return imagensList;
    }

    public void setImagensList(List<Imagens> imagensList) {
        this.imagensList = imagensList;
    }

    public ProdutoRoupasSuperiores getProdutoRoupasSuperiores() {
        return produtoRoupasSuperiores;
    }

    public void setProdutoRoupasSuperiores(ProdutoRoupasSuperiores produtoRoupasSuperiores) {
        this.produtoRoupasSuperiores = produtoRoupasSuperiores;
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

    public ProdutoAcessorios getProdutoAcessorios() {
        return produtoAcessorios;
    }

    public void setProdutoAcessorios(ProdutoAcessorios produtoAcessorios) {
        this.produtoAcessorios = produtoAcessorios;
    }

    public List<ItemVendas> getItemVendasList() {
        return itemVendasList;
    }

    public void setItemVendasList(List<ItemVendas> itemVendasList) {
        this.itemVendasList = itemVendasList;
    }

    public ProdutoCalcados getProdutoCalcados() {
        return produtoCalcados;
    }

    public void setProdutoCalcados(ProdutoCalcados produtoCalcados) {
        this.produtoCalcados = produtoCalcados;
    }

    public ProdutoRoupasInferiores getProdutoRoupasInferiores() {
        return produtoRoupasInferiores;
    }

    public void setProdutoRoupasInferiores(ProdutoRoupasInferiores produtoRoupasInferiores) {
        this.produtoRoupasInferiores = produtoRoupasInferiores;
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
