package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.CompraDAO;
import br.com.oliveira.controleloja.datamodels.Compra;

public class HibernateCompraDAO extends GenericHibernateDAO<Compra, Integer> implements CompraDAO {

	public HibernateCompraDAO() {
		super();
	}
	
}
