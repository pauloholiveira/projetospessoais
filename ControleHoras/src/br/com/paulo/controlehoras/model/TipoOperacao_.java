package br.com.paulo.controlehoras.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-03-23T00:08:36.230-0300")
@StaticMetamodel(TipoOperacao.class)
public class TipoOperacao_ {
	public static volatile SingularAttribute<TipoOperacao, Integer> id;
	public static volatile SingularAttribute<TipoOperacao, String> descricao;
	public static volatile ListAttribute<TipoOperacao, Operacao> operacoes;
}
