package br.com.paulo.controlehoras.dao;

import java.util.List;

public interface GenericJPADAO<PK, T> {
	
	public T getById(PK pk);
	public void save(T entity);
	public void update(T entity);
	public void delete(T entity);
	public List<T> findAll();
}