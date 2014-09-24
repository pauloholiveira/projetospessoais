package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String username;

	private String password;

	//bi-directional many-to-one association to RolesUser
	@OneToMany(mappedBy="user")
	private List<RolesUser> rolesUsers;

	public User() {
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<RolesUser> getRolesUsers() {
		return this.rolesUsers;
	}

	public void setRolesUsers(List<RolesUser> rolesUsers) {
		this.rolesUsers = rolesUsers;
	}

	public RolesUser addRolesUser(RolesUser rolesUser) {
		getRolesUsers().add(rolesUser);
		rolesUser.setUser(this);

		return rolesUser;
	}

	public RolesUser removeRolesUser(RolesUser rolesUser) {
		getRolesUsers().remove(rolesUser);
		rolesUser.setUser(null);

		return rolesUser;
	}

}