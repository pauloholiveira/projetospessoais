package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.ClienteDAO;
import br.com.oliveira.controleloja.datamodels.Cliente;

public class HibernateClienteDAO extends GenericHibernateDAO<Cliente, Integer> implements ClienteDAO {

	public HibernateClienteDAO() {
		super();
	}
	
}
