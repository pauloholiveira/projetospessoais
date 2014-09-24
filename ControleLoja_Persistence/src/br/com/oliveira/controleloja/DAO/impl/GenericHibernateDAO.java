package br.com.oliveira.controleloja.DAO.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.oliveira.controleloja.DAO.DAOService;

public class GenericHibernateDAO<EntityType, PKType extends Serializable>
		implements DAOService<EntityType, PKType> {

	private static Log LOG = LogFactory.getLog(GenericHibernateDAO.class);

	// Classe que ser� persistida.
	private Class<EntityType> persistentClass;

	private SessionFactory sessionFactory;

	// Nosso construtor vai setar automaticamente via Reflection qual classe
	// estamos tratando.
	@SuppressWarnings("unchecked")
	public GenericHibernateDAO() {
		ParameterizedType paramType = (ParameterizedType) getClass()
				.getGenericSuperclass();
		this.persistentClass = (Class<EntityType>) paramType
				.getActualTypeArguments()[0];
	}

	public Class<EntityType> getPersistentClass() {
		return this.persistentClass;
	}

	public void setPersistentClass(Class<EntityType> persistentClass) {
		this.persistentClass = persistentClass;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void remove(EntityType entity) {

		try {
			this.sessionFactory.getCurrentSession().delete(entity);
		} catch (final HibernateException ex) {
			GenericHibernateDAO.LOG.error(ex);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public EntityType findByPrimaryKey(PKType id) {
		EntityType object = null;

		try {
			object = (EntityType) this.sessionFactory.getCurrentSession().get(
					getPersistentClass(), id);
			return object;
		} catch (final HibernateException ex) {
			GenericHibernateDAO.LOG.error(ex);
		}

		return object;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public List<EntityType> loadAll() {
		List<EntityType> lista = null;

		try {
			lista = this.findByCriteria();
			return lista;
		} catch (final HibernateException ex) {
			GenericHibernateDAO.LOG.error(ex);
		}

		return lista;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void store(EntityType entity) throws HibernateException{
		try {
			this.sessionFactory.getCurrentSession().save(entity);
		} catch (final HibernateException ex) {
			GenericHibernateDAO.LOG.error(ex);
		}
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.REQUIRED)
	public List<EntityType> findByCriteria(Criterion... criterion) {
		List<EntityType> todos = null;
		try {
			Criteria crit = this.sessionFactory.getCurrentSession()
					.createCriteria(getPersistentClass());
			for (Criterion c : criterion) {
				crit.add(c);
			}

			todos = crit.list();

			return todos;
		} catch (final HibernateException ex) {
			GenericHibernateDAO.LOG.error(ex);
		}

		return todos;
	}

	/**
	 * @param sessionFactory
	 *            the sessionFactory to set
	 */

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getCurrentSession() {
		return this.sessionFactory;
	}
}
