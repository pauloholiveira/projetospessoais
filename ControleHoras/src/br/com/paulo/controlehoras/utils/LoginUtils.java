package br.com.paulo.controlehoras.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;

import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.model.Users;
import br.com.paulo.controlehoras.model.Usuario;

public class LoginUtils {
	
	public static Usuario obterUsuarioLogado(UsersDAO usersDAO, SecurityContext securityContext){
		Authentication authentication = (Authentication) securityContext.getAuthentication();
		String login = authentication.getName();
		Users user = usersDAO.getById(login);
		Usuario usuario = user.getUsuario();
		
		return usuario;
	}
}
