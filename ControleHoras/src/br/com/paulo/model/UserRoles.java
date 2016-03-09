package br.com.paulo.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="userroles", catalog="controle_horas", schema="")
@NamedQueries(
		{
			@NamedQuery(name="FindAll", query="select us from UserRoles us"),
			@NamedQuery(name="FindByUserRole", query="select us from UserRoles us where us.userRole= :role"),
			@NamedQuery(name="FindByUserName", query="select us from UserRoles us where us.user= :user")
			
		})
public class UserRoles implements Serializable {
	private static final long serialVersionUID = -439562348389992322L;

	@Id
	@Basic(optional = false)
    @Column(name = "user")
    private String user;
	
	@Basic(optional = false)
    @Column(name = "userRole")
	private String userRole;
	
	@JoinColumn(name = "user", referencedColumnName = "user", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Users users;
	
	
	public UserRoles() { }
	
	public UserRoles(String user) {
		this.user = user;
	}
	
	public UserRoles(String user, String userRole) {
		this.user = user;
		this.userRole = userRole;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (user != null ? user.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof UserRoles)) {
            return false;
        }
        UserRoles other = (UserRoles) object;
        if ((this.user == null && other.user != null) || (this.user != null && !this.user.equals(other.user))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.paulo.model.Userroles[ user=" + user + " ]";
    }
	
}
