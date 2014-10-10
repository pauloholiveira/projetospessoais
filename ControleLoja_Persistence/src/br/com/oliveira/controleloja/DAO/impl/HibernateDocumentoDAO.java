package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.DocumentoDAO;
import br.com.oliveira.controleloja.datamodels.Documentos;

public class HibernateDocumentoDAO extends GenericHibernateDAO<Documentos, Integer> implements DocumentoDAO {

	public HibernateDocumentoDAO() {
		super();
	}
	
}
