package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.VendaDAO;
import br.com.oliveira.controleloja.datamodels.Vendas;

public class HibernateVendaDAO extends GenericHibernateDAO<Vendas, Integer> implements VendaDAO {

	public HibernateVendaDAO() {
		super();
	}
	
}
