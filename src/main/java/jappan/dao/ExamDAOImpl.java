package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Exam;

@Repository
@Transactional(rollbackFor = Exception.class)
public class ExamDAOImpl extends BaseDAOImpl<Exam> implements ExamDAO<Exam> {

}
