package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.UsersDAO;
import br.com.paulo.model.Users;

public class UsersDAOJPAImpl extends GenericJPADAOImpl<String, Users> implements UsersDAO {

	public UsersDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
