package br.com.paulo.controlehoras.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-03-08T14:21:04.124-0300")
@StaticMetamodel(Expediente.class)
public class Expediente_ {
	public static volatile SingularAttribute<Expediente, Integer> id;
	public static volatile SingularAttribute<Expediente, Date> dataNascimento;
	public static volatile SingularAttribute<Expediente, String> observacoes;
	public static volatile SingularAttribute<Expediente, Usuario> cpf_usuario;
	public static volatile ListAttribute<Expediente, Operacao> operacoes;
}
