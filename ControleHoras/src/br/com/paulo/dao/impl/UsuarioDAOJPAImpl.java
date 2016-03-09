package br.com.paulo.dao.impl;

import javax.persistence.EntityManager;

import br.com.paulo.dao.UsuarioDAO;
import br.com.paulo.model.Usuario;
import br.com.paulo.model.UsuarioPK;

public class UsuarioDAOJPAImpl extends GenericJPADAOImpl<UsuarioPK, Usuario> implements UsuarioDAO {

	public UsuarioDAOJPAImpl(EntityManager entityManager) {
		super(entityManager);
	}

}
