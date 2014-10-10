package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.RolesUserDAO;
import br.com.oliveira.controleloja.datamodels.RolesUsers;


public class HibernateRolesUserDAO extends GenericHibernateDAO<RolesUsers, Integer> implements RolesUserDAO {

	public HibernateRolesUserDAO() {
		super();
	}
	
}
