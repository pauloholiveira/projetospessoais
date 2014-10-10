/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "roles_users")
@NamedQueries({
    @NamedQuery(name = "RolesUsers.findAll", query = "SELECT r FROM RolesUsers r"),
    @NamedQuery(name = "RolesUsers.findByUsername", query = "SELECT r FROM RolesUsers r WHERE r.rolesUsersPK.username = :username"),
    @NamedQuery(name = "RolesUsers.findByRole", query = "SELECT r FROM RolesUsers r WHERE r.rolesUsersPK.role = :role")})
public class RolesUsers implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected RolesUsersPK rolesUsersPK;
    @JoinColumn(name = "username", referencedColumnName = "username", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Users users;

    public RolesUsers() {
    }

    public RolesUsers(RolesUsersPK rolesUsersPK) {
        this.rolesUsersPK = rolesUsersPK;
    }

    public RolesUsers(String username, String role) {
        this.rolesUsersPK = new RolesUsersPK(username, role);
    }

    public RolesUsersPK getRolesUsersPK() {
        return rolesUsersPK;
    }

    public void setRolesUsersPK(RolesUsersPK rolesUsersPK) {
        this.rolesUsersPK = rolesUsersPK;
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
        hash += (rolesUsersPK != null ? rolesUsersPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RolesUsers)) {
            return false;
        }
        RolesUsers other = (RolesUsers) object;
        if ((this.rolesUsersPK == null && other.rolesUsersPK != null) || (this.rolesUsersPK != null && !this.rolesUsersPK.equals(other.rolesUsersPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.com.oliveira.controleloja.datamodels.RolesUsers[rolesUsersPK=" + rolesUsersPK + "]";
    }

}
