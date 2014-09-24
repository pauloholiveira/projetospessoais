package br.com.oliveira.controleloja.DAO.impl;

import java.util.List;

import org.hibernate.criterion.Restrictions;

import br.com.oliveira.controleloja.DAO.VendaStatusDAO;
import br.com.oliveira.controleloja.datamodels.VendaStatus;

public class HibernateVendaStatusDAO extends GenericHibernateDAO<VendaStatus, Integer> implements VendaStatusDAO {

	public HibernateVendaStatusDAO() {
		super();
	}

	@Override
	public VendaStatus obterVendaStatusPorDescricao(String descricao) {
		List<VendaStatus> list = this.findByCriteria(Restrictions.eq("descricao", descricao));
		
		return list.get(0);
	}
	
}
