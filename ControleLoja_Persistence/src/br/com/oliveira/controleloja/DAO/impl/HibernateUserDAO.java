package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.UserDAO;
import br.com.oliveira.controleloja.datamodels.User;

public class HibernateUserDAO extends GenericHibernateDAO<User, Integer> implements UserDAO {

	public HibernateUserDAO() {
		super();
	}
	
}
