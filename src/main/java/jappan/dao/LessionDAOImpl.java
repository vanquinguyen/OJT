package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Lession;

@Repository
@Transactional(rollbackFor = Exception.class)
public class LessionDAOImpl extends BaseDAOImpl<Lession> implements LessionDAO<Lession> {

}
