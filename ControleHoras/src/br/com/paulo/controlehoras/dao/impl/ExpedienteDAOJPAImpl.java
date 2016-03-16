package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.model.Expediente;

public class ExpedienteDAOJPAImpl extends GenericJPADAOImpl<Integer, Expediente> implements ExpedienteDAO{

	public ExpedienteDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
