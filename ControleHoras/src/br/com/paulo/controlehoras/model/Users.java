package br.com.paulo.controlehoras.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users", catalog = "controle_horas", schema = "")
@NamedQueries(
		{
			@NamedQuery(name="findAll", query="select u from Users u"),
			@NamedQuery(name="findByuser", query="select u from Users u where u.user=:user"),
			@NamedQuery(name="findByRole", query="select u from Users u where u.userRoles.userRole = :role")
			
		})
public class Users implements Serializable {
	
	private static final long serialVersionUID = -2586588774610027863L;
	
	@Id
	@Basic(optional = false)
    @Column(name = "user")
	private String user;
	
	@Basic(optional = false)
    @Column(name = "password")
	private String password;
	
	@Basic(optional = false)
    @Column(name="enabled", columnDefinition="TINYINT(1)")
	private boolean enabled;
	
	@Basic(optional = false)
    @Column(name = "validation")
	private String validation;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.EAGER)
    private UserRoles userRoles;
	
	@OneToOne(mappedBy = "user")
	private Usuario usuario;
	
	public Users() { }
	
	public Users(String user) {
        this.user = user;
    }
	
	public Users(String user, String password) {
		this.user = user;
		this.password = password;
	}
	
	public Users(String user, String password, boolean enabled) {
		this(user,password);
		this.enabled = enabled;
	}
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	public String getValidation() {
		return validation;
	}

	public void setValidation(String validation) {
		this.validation = validation;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public UserRoles getUserRoles() {
		return userRoles;
	}
	
	public void setUserRoles(UserRoles userRoles) {
		this.userRoles = userRoles;
	}
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (user != null ? user.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.user == null && other.user != null) || (this.user != null && !this.user.equals(other.user))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.paulo.model.Users[ user=" + user + " ]";
    }
}
