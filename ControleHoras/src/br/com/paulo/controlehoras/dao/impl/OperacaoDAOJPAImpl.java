package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.OperacaoDAO;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.OperacaoPK;

@Repository
@Transactional
public class OperacaoDAOJPAImpl extends GenericJPADAOImpl<OperacaoPK, Operacao> implements OperacaoDAO {


}
