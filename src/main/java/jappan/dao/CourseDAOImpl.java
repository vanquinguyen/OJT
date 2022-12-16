package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Course;

@Repository
@Transactional(rollbackFor = Exception.class)
public class CourseDAOImpl extends BaseDAOImpl<Course> implements CourseDAO<Course> {


}
