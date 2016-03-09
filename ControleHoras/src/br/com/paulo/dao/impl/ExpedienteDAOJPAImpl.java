package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.ExpedienteDAO;
import br.com.paulo.model.Expediente;

public class ExpedienteDAOJPAImpl extends GenericJPADAOImpl<Integer, Expediente> implements ExpedienteDAO{

	public ExpedienteDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
