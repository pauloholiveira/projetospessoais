package br.com.paulo.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-03-07T23:16:44.745-0300")
@StaticMetamodel(Users.class)
public class Users_ {
	public static volatile SingularAttribute<Users, String> user;
	public static volatile SingularAttribute<Users, String> password;
	public static volatile SingularAttribute<Users, UserRoles> userRoles;
	public static volatile SingularAttribute<Users, Usuario> usuario;
}
