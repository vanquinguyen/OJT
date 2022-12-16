package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.ExamPart;

@Repository
@Transactional(rollbackFor = Exception.class)
public class ExamPartDAOImpl extends BaseDAOImpl<ExamPart> implements ExamPartDAO<ExamPart> {

}
