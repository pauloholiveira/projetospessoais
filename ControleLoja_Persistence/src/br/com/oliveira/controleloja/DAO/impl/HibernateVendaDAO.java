package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.VendaDAO;
import br.com.oliveira.controleloja.datamodels.Venda;

public class HibernateVendaDAO extends GenericHibernateDAO<Venda, Integer> implements VendaDAO {

	public HibernateVendaDAO() {
		super();
	}
	
}
