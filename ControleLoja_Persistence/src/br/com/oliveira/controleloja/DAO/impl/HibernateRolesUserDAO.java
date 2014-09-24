package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.RolesUserDAO;
import br.com.oliveira.controleloja.datamodels.RolesUser;


public class HibernateRolesUserDAO extends GenericHibernateDAO<RolesUser, Integer> implements RolesUserDAO {

	public HibernateRolesUserDAO() {
		super();
	}
	
}
