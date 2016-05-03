package br.com.paulo.controlehoras.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Usuario;

@Repository
@Transactional
public class ExpedienteDAOJPAImpl extends
		GenericJPADAOImpl<Integer, Expediente> implements ExpedienteDAO {

	@SuppressWarnings("rawtypes")
	@Override
	public Expediente getLastExpedienteByUsuario(Usuario usuario) {
		//String expediente_query = "SELECT exp FROM Expediente exp JOIN FETCH exp.operacoes WHERE exp.cpf_usuario = (:cpf) order by exp.id DESC limit 1";
		String expediente_query = "SELECT exp FROM Expediente exp WHERE exp.cpf_usuario = (:cpf) order by exp.id DESC limit 1";
		
		Query query = entityManager.createQuery(expediente_query);
		query.setParameter("cpf", usuario);
		
		List exp_list = query.getResultList();
		Expediente expediente = null;
		if(exp_list != null && exp_list.size()> 0){
			if(exp_list.get(0) instanceof Expediente){
				expediente = (Expediente)exp_list.get(0);
			}
		}
		
		
		return expediente;
	}
	
	@Override
	public Expediente getExpedienteByID(Integer id) {
		String expediente_query = "SELECT exp FROM Expediente exp JOIN FETCH exp.operacoes WHERE exp.id = (:id)";
		
		Query query = entityManager.createQuery(expediente_query);
		query.setParameter("id", id);
		
		Expediente expediente = (Expediente)query.getSingleResult();
		
		
		return expediente;
	}

}
