package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;
import br.com.paulo.controlehoras.model.TipoOperacao;

public class TipoOperacaoDAOJPAImpl extends GenericJPADAOImpl<Integer, TipoOperacao> implements TipoOperacaoDAO {

	public TipoOperacaoDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
