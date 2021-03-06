package br.com.paulo.controlehoras.dao;

import br.com.paulo.controlehoras.model.Users;

public interface UsersDAO extends GenericJPADAO<String, Users>{
	public Users getByValidation(String validation);
	public Users getByKeyRedefinition(String pw_redef);
}
