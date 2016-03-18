package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;

@Repository
@Transactional
public class UsuarioDAOJPAImpl extends GenericJPADAOImpl<UsuarioPK, Usuario> implements UsuarioDAO {


}
