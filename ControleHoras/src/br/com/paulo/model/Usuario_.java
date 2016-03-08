package br.com.paulo.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-02-16T15:44:05.776-0200")
@StaticMetamodel(Usuario.class)
public class Usuario_ {
	public static volatile SingularAttribute<Usuario, String> nome;
	public static volatile SingularAttribute<Usuario, Users> user;
	public static volatile ListAttribute<Usuario, Expediente> expedientes;
	public static volatile SingularAttribute<Usuario, UsuarioPK> usuarioPK;
}
