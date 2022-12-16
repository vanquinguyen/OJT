package jappan.dao;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import jappan.model.Paging;
public interface BaseDAO<E> {
	public List<E> findAll();
	public E findById(Class<E> e, Serializable id);
	public List<E> findByProperty(String property , Object value);
	public void save(E instance);
	public void update(E instance);
	public List<E> findAll(String queryStr, Map<String, Object> mapParams, Paging paging);	
}
