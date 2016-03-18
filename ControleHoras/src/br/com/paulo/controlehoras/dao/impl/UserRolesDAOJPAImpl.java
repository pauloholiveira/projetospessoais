package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.UserRolesDAO;
import br.com.paulo.controlehoras.model.UserRoles;

@Repository
@Transactional
public class UserRolesDAOJPAImpl extends GenericJPADAOImpl<String, UserRoles> implements UserRolesDAO {



}
