package br.com.paulo.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-03-07T23:16:44.706-0300")
@StaticMetamodel(TipoOperacao.class)
public class TipoOperacao_ {
	public static volatile SingularAttribute<TipoOperacao, Integer> id;
	public static volatile SingularAttribute<TipoOperacao, String> descricao;
	public static volatile ListAttribute<TipoOperacao, Operacao> operacoes;
}
