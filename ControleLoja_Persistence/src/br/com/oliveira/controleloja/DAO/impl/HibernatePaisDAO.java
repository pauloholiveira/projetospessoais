package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.PaisDAO;
import br.com.oliveira.controleloja.datamodels.Pais;

public class HibernatePaisDAO extends GenericHibernateDAO<Pais, Integer> implements PaisDAO {

	public HibernatePaisDAO() {
		super();
	}
	
}
