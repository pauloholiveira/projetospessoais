package br.com.paulo.controlehoras.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;

@Repository
@Transactional
public class UsuarioDAOJPAImpl extends GenericJPADAOImpl<UsuarioPK, Usuario> implements UsuarioDAO {
	
	public Usuario getByEmail(String email){
		String usuario_email_query = "SELECT usuario FROM Usuario usuario WHERE usuario.email = (:email)";
		
		Query query = entityManager.createQuery(usuario_email_query);
		query.setParameter("email", email);
		
		List usuarios_list = query.getResultList();
		Usuario usuario = null;
		if(usuarios_list != null && usuarios_list.size() > 0){
			if(usuarios_list.get(0) instanceof Usuario){
				usuario = (Usuario)usuarios_list.get(0);
			}
		}
		
		return usuario;
	}

}
