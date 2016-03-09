package br.com.paulo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
//@IdClass(UsuarioPK.class)
@Table(name = "usuario", catalog = "controle_horas", schema = "")
public class Usuario  implements Serializable{
	private static final long serialVersionUID = -2613068058510158130L;
	
	/*@Id
	private String cpf;
	
	@Id
	@Temporal(TemporalType.TIMESTAMP)	
	private Date data_nascimento;*/
	@EmbeddedId
    protected UsuarioPK usuarioPK;
	
	@Basic(optional = false)
    @Column(name = "nome")
	private String nome;
	
	@JoinColumn(name = "user", referencedColumnName = "user")
    @OneToOne(optional = false)
    private Users user;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "cpf_usuario")
    private List<Expediente> expedientes;
	
	
	public Usuario() { }
	
	public Usuario(UsuarioPK usuarioPK) {
        this.usuarioPK = usuarioPK;
    }

    public Usuario(UsuarioPK usuarioPK, String nome) {
        this.usuarioPK = usuarioPK;
        this.nome = nome;
    }
    
	/*public Usuario(String cpf, Date data_nascimento, String nome, Users user) {
		this.cpf = cpf;
		this.data_nascimento = data_nascimento;
		this.nome = nome;
		this.user = user;
	}*/
    public Usuario(String cpf, Date data_nascimento) {
    	this.usuarioPK = new UsuarioPK(cpf, data_nascimento);
	}

	/*public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Date getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}*/

	public UsuarioPK getUsuarioPK() {
		return usuarioPK;
	}

	public void setUsuarioPK(UsuarioPK usuarioPK) {
		this.usuarioPK = usuarioPK;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public List<Expediente> getExpedientes() {
		return expedientes;
	}
	public void setExpedientes(List<Expediente> expedientes) {
		this.expedientes = expedientes;
	}
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (usuarioPK != null ? usuarioPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.usuarioPK == null && other.usuarioPK != null) || (this.usuarioPK != null && !this.usuarioPK.equals(other.usuarioPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.paulo.model.Usuario[ usuarioPK=" + usuarioPK + " ]";
    }
}
