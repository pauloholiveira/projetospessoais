package br.com.paulo.controlehoras.dao;

import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;

public interface UsuarioDAO extends GenericJPADAO<UsuarioPK, Usuario>{
	public Usuario getByEmail(String email);
}
