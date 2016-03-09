package br.com.paulo.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.paulo.dao.GenericJPADAO;

@SuppressWarnings("unchecked")
public class GenericJPADAOImpl<PK, T> implements GenericJPADAO<PK,T> {

	private EntityManager entityManager;
	
	
    public GenericJPADAOImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
	public T getById(PK pk) {
        return (T) entityManager.find(getTypeClass(), pk);
    }
 
    public void save(T entity) {
        entityManager.persist(entity);
    }
 
    public void update(T entity) {
        entityManager.merge(entity);
    }
 
    public void delete(T entity) {
        entityManager.remove(entity);
    }
 
    public List<T> findAll() {
        return entityManager.createQuery(("FROM " + getTypeClass().getName())).getResultList();
    }
 
    private Class<?> getTypeClass() {
        Class<?> clazz = (Class<?>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        return clazz;
    }
    
}
