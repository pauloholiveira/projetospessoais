package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.model.Users;

@Repository
@Transactional
public class UsersDAOJPAImpl extends GenericJPADAOImpl<String, Users> implements UsersDAO {


}
