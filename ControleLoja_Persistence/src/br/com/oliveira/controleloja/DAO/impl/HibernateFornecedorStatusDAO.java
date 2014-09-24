package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.FornecedorStatusDAO;
import br.com.oliveira.controleloja.datamodels.FornecedorStatus;

public class HibernateFornecedorStatusDAO extends GenericHibernateDAO<FornecedorStatus, Integer> implements FornecedorStatusDAO {

	public HibernateFornecedorStatusDAO() {
		super();
	}
	
}
