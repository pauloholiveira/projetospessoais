package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.EstadoDAO;
import br.com.oliveira.controleloja.datamodels.Estado;

public class HibernateEstadoDAO extends GenericHibernateDAO<Estado, Integer> implements EstadoDAO {

	public HibernateEstadoDAO() {
		super();
	}
	
}
