package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.model.Expediente;

@Repository
@Transactional
public class ExpedienteDAOJPAImpl extends
		GenericJPADAOImpl<Integer, Expediente> implements ExpedienteDAO {

}
