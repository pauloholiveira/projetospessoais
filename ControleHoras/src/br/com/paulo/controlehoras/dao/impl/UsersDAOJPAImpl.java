package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.model.Users;

public class UsersDAOJPAImpl extends GenericJPADAOImpl<String, Users> implements UsersDAO {

	public UsersDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
