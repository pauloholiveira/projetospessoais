package br.com.oliveira.controleloja.DAO.impl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import br.com.oliveira.controleloja.DAO.CidadeDAO;
import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Estado;

public class HibernateCidadeDAO extends GenericHibernateDAO<Cidade, Integer> implements CidadeDAO {

	public HibernateCidadeDAO() {
		super();
	}
	
	@Override
	public List<Cidade> obterCidadesPorEstado(Estado estado) {
		List<Cidade> list = this.findByCriteria(Restrictions.eq("estado", estado));
		
		return list;
	}
}
