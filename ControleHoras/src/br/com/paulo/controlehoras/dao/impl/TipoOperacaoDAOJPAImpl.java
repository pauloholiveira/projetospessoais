package br.com.paulo.controlehoras.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;
import br.com.paulo.controlehoras.model.TipoOperacao;

@Repository
@Transactional
public class TipoOperacaoDAOJPAImpl extends GenericJPADAOImpl<Integer, TipoOperacao> implements TipoOperacaoDAO {

}
