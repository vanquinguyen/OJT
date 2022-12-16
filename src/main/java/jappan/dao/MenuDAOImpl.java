package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Menu;

@Repository
@Transactional(rollbackFor = Exception.class)
public class MenuDAOImpl extends BaseDAOImpl<Menu> implements MenuDAO<Menu> {

}
