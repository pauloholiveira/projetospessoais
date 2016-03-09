package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.UserRolesDAO;
import br.com.paulo.model.UserRoles;

public class UserRolesDAOJPAImpl extends GenericJPADAOImpl<String, UserRoles> implements UserRolesDAO {

	public UserRolesDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
