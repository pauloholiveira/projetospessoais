package br.com.oliveira.controleloja.DAO.impl;

import br.com.oliveira.controleloja.DAO.EstoqueOperacaoDAO;
import br.com.oliveira.controleloja.datamodels.EstoqueOperacao;

public class HibernateEstoqueOperacaoDAO extends GenericHibernateDAO<EstoqueOperacao, Integer> implements EstoqueOperacaoDAO {

	public HibernateEstoqueOperacaoDAO() {
		super();
	}
	
}
