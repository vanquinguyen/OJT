package jappan.dao;

import jappan.model.Auth;

public interface AuthDAO<E> extends BaseDAO<E> {

	public Auth find(int roleId, int menuId);

}
