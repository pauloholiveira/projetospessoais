package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.FornecedorDAO;
import br.com.oliveira.controleloja.datamodels.Fornecedor;


public class HibernateFornecedorDAO extends GenericHibernateDAO<Fornecedor, Integer> implements FornecedorDAO {

	public HibernateFornecedorDAO() {
		super();
	}
	
}
