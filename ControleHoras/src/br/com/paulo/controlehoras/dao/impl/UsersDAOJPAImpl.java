package br.com.paulo.controlehoras.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.model.Users;

@Repository
@Transactional
public class UsersDAOJPAImpl extends GenericJPADAOImpl<String, Users> implements UsersDAO {

	@SuppressWarnings("rawtypes")
	@Override
	public Users getByValidation(String validation) {
		String users_query = "SELECT user FROM Users user WHERE user.validation = (:validation)";
		
		Query query = entityManager.createQuery(users_query);
		query.setParameter("validation", validation);
		
		List users_list = query.getResultList();
		Users users = null;
		if(users_list != null && users_list.size()> 0){
			if(users_list.get(0) instanceof Users){
				users = (Users)users_list.get(0);
			}
		}
		
		return users;
	}

	

}
