package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Level;

@Repository
@Transactional(rollbackFor = Exception.class)
public class LevelDAOImpl extends BaseDAOImpl<Level> implements LevelDAO<Level> {

}
