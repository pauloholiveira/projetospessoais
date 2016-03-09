package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.OperacaoDAO;
import br.com.paulo.model.Operacao;
import br.com.paulo.model.OperacaoPK;

public class OperacaoDAOJPAImpl extends GenericJPADAOImpl<OperacaoPK, Operacao> implements OperacaoDAO {

	public OperacaoDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
