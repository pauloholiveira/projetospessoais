package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.UserRolesDAO;
import br.com.paulo.controlehoras.model.UserRoles;

public class UserRolesDAOJPAImpl extends GenericJPADAOImpl<String, UserRoles> implements UserRolesDAO {

	public UserRolesDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
