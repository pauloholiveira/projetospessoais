package br.com.paulo.controlehoras.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;

public class UsuarioDAOJPAImpl extends GenericJPADAOImpl<UsuarioPK, Usuario> implements UsuarioDAO {

	public UsuarioDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
