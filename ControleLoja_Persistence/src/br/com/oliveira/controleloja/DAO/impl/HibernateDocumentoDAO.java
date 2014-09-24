package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.DocumentoDAO;
import br.com.oliveira.controleloja.datamodels.Documento;

public class HibernateDocumentoDAO extends GenericHibernateDAO<Documento, Integer> implements DocumentoDAO {

	public HibernateDocumentoDAO() {
		super();
	}
	
}
