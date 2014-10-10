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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "cliente")
@NamedQueries({
    @NamedQuery(name = "Cliente.findAll", query = "SELECT c FROM Cliente c"),
    @NamedQuery(name = "Cliente.findById", query = "SELECT c FROM Cliente c WHERE c.id = :id"),
    @NamedQuery(name = "Cliente.findByDataCadastro", query = "SELECT c FROM Cliente c WHERE c.dataCadastro = :dataCadastro"),
    @NamedQuery(name = "Cliente.findByNome", query = "SELECT c FROM Cliente c WHERE c.nome = :nome"),
    @NamedQuery(name = "Cliente.findByApelido", query = "SELECT c FROM Cliente c WHERE c.apelido = :apelido"),
    @NamedQuery(name = "Cliente.findByEmail", query = "SELECT c FROM Cliente c WHERE c.email = :email"),
    @NamedQuery(name = "Cliente.findByLogradouro", query = "SELECT c FROM Cliente c WHERE c.logradouro = :logradouro"),
    @NamedQuery(name = "Cliente.findByCep", query = "SELECT c FROM Cliente c WHERE c.cep = :cep"),
    @NamedQuery(name = "Cliente.findByBairro", query = "SELECT c FROM Cliente c WHERE c.bairro = :bairro"),
    @NamedQuery(name = "Cliente.findByTelefoneFixo", query = "SELECT c FROM Cliente c WHERE c.telefoneFixo = :telefoneFixo"),
    @NamedQuery(name = "Cliente.findByTelefoneCelular", query = "SELECT c FROM Cliente c WHERE c.telefoneCelular = :telefoneCelular"),
    @NamedQuery(name = "Cliente.findByTelefoneComercial", query = "SELECT c FROM Cliente c WHERE c.telefoneComercial = :telefoneComercial"),
    @NamedQuery(name = "Cliente.findByRg", query = "SELECT c FROM Cliente c WHERE c.rg = :rg"),
    @NamedQuery(name = "Cliente.findByDataNascimento", query = "SELECT c FROM Cliente c WHERE c.dataNascimento = :dataNascimento")})
public class Cliente implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "data_cadastro")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCadastro;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Column(name = "apelido")
    private String apelido;
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "logradouro")
    private String logradouro;
    @Column(name = "cep")
    private String cep;
    @Basic(optional = false)
    @Column(name = "bairro")
    private String bairro;
    @Column(name = "telefone_fixo")
    private String telefoneFixo;
    @Column(name = "telefone_celular")
    private String telefoneCelular;
    @Column(name = "telefone_comercial")
    private String telefoneComercial;
    @Basic(optional = false)
    @Column(name = "rg")
    private String rg;
    @Basic(optional = false)
    @Column(name = "data_nascimento")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataNascimento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    private List<Vendas> vendasList;
    @JoinColumn(name = "status_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private ClienteStatus clienteStatus;
	//bi-directional many-to-one association to Documento
	@OneToOne(cascade = CascadeType.ALL)
	private Documentos documento;
    @JoinColumn(name = "cidade_id", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Cidade cidade;

    public Cliente() {
    }

    public Cliente(Integer id) {
        this.id = id;
    }

    public Cliente(Integer id, String nome, String logradouro, String bairro, String rg, Date dataNascimento) {
        this.id = id;
        this.nome = nome;
        this.logradouro = logradouro;
        this.bairro = bairro;
        this.rg = rg;
        this.dataNascimento = dataNascimento;
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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        this.apelido = apelido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getTelefoneFixo() {
        return telefoneFixo;
    }

    public void setTelefoneFixo(String telefoneFixo) {
        this.telefoneFixo = telefoneFixo;
    }

    public String getTelefoneCelular() {
        return telefoneCelular;
    }

    public void setTelefoneCelular(String telefoneCelular) {
        this.telefoneCelular = telefoneCelular;
    }

    public String getTelefoneComercial() {
        return telefoneComercial;
    }

    public void setTelefoneComercial(String telefoneComercial) {
        this.telefoneComercial = telefoneComercial;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public List<Vendas> getVendasList() {
        return vendasList;
    }

    public void setVendasList(List<Vendas> vendasList) {
        this.vendasList = vendasList;
    }

    public ClienteStatus getClienteStatus() {
        return clienteStatus;
    }

    public void setClienteStatus(ClienteStatus clienteStatus) {
        this.clienteStatus = clienteStatus;
    }

    public Documentos getDocumentos() {
        return this.documento;
    }

    public void setDocumentos(Documentos documentos) {
        this.documento = documentos;
    }

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
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
        if (!(object instanceof Cliente)) {
            return false;
        }
        Cliente other = (Cliente) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.Cliente[id=" + id + "]";
    }

}
