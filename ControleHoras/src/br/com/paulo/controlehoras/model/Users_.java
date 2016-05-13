package br.com.paulo.controlehoras.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-05-13T14:45:19.461-0300")
@StaticMetamodel(Users.class)
public class Users_ {
	public static volatile SingularAttribute<Users, String> user;
	public static volatile SingularAttribute<Users, String> password;
	public static volatile SingularAttribute<Users, Boolean> enabled;
	public static volatile SingularAttribute<Users, UserRoles> userRoles;
	public static volatile SingularAttribute<Users, Usuario> usuario;
	public static volatile SingularAttribute<Users, String> validation;
}
