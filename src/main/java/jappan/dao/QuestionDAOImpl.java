package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Question;

@Repository
@Transactional(rollbackFor = Exception.class)
public class QuestionDAOImpl extends BaseDAOImpl<Question> implements QuestionDAO<Question> {

	

}
