package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ClienteStatusDAO;
import br.com.oliveira.controleloja.datamodels.ClienteStatus;

public class HibernateClienteStatusDAO extends GenericHibernateDAO<ClienteStatus, Integer> implements ClienteStatusDAO {

	public HibernateClienteStatusDAO() {
		super();
	}
	
}
