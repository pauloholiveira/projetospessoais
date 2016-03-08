package br.com.paulo.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2016-02-16T16:40:00.557-0200")
@StaticMetamodel(Operacao.class)
public class Operacao_ {
	public static volatile SingularAttribute<Operacao, OperacaoPK> operacaoPK;
	public static volatile SingularAttribute<Operacao, Date> data_hora;
	public static volatile SingularAttribute<Operacao, TipoOperacao> tipoOperacao;
	public static volatile SingularAttribute<Operacao, Expediente> expediente;
}
