package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.TipoOperacaoDAO;
import br.com.paulo.model.TipoOperacao;

public class TipoOperacaoDAOJPAImpl extends GenericJPADAOImpl<Integer, TipoOperacao> implements TipoOperacaoDAO {

	public TipoOperacaoDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
