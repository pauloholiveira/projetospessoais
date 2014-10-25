package br.com.oliveira.controleloja.DAO.impl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import br.com.oliveira.controleloja.DAO.VendaStatusDAO;
import br.com.oliveira.controleloja.datamodels.VendasStatus;

public class HibernateVendaStatusDAO extends GenericHibernateDAO<VendasStatus, Integer> implements VendaStatusDAO {

	public HibernateVendaStatusDAO() {
		super();
	}

	@Override
	public VendasStatus obterVendaStatusPorDescricao(String descricao) {
		List<VendasStatus> list = this.findByCriteria(Restrictions.eq("descricao", descricao));
		
		return list.get(0);
	}
	
}
