package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.OperacaoDAO;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.OperacaoPK;

public class OperacaoDAOJPAImpl extends GenericJPADAOImpl<OperacaoPK, Operacao> implements OperacaoDAO {

	public OperacaoDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
