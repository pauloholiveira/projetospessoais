package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.UserDAO;
import br.com.oliveira.controleloja.datamodels.Users;

public class HibernateUserDAO extends GenericHibernateDAO<Users, Integer> implements UserDAO {

	public HibernateUserDAO() {
		super();
	}
	
}
