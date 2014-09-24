package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.CompraStatusDAO;
import br.com.oliveira.controleloja.datamodels.CompraStatus;

public class HibernateCompraStatusDAO extends GenericHibernateDAO<CompraStatus, Integer> implements CompraStatusDAO {

	public HibernateCompraStatusDAO() {
		super();
	}
	
}
