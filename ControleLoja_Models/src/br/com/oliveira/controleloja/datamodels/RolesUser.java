package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the roles_users database table.
 * 
 */
@Entity
@Table(name="roles_users")
@NamedQuery(name="RolesUser.findAll", query="SELECT r FROM RolesUser r")
public class RolesUser implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RolesUserPK id;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="username", insertable=false, updatable=false)
	private User user;

	public RolesUser() {
	}

	public RolesUserPK getId() {
		return this.id;
	}

	public void setId(RolesUserPK id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}