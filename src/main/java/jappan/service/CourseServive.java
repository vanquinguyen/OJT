package jappan.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import jappan.dao.CourseDAO;
import jappan.model.Course;
import jappan.model.Paging;

@Service
public class CourseServive {
	@Autowired
	private CourseDAO<Course> courseDAO;
	private static final Logger log= Logger.getLogger(CourseServive.class);
	public void saveCourse(Course course) throws Exception {
		log.info("Insert Course"+course.toString());
		course.setActiveFlag(1);
		course.setCreateDate(new Date());
		course.setUpdateDate(new Date());
		courseDAO.save(course);
	}
	public void updateCourse(Course course) throws Exception {
		log.info("Update Course "+course.toString());
		
		course.setUpdateDate(new Date());
		courseDAO.update(course);
	}
	public void deleteCourse(Course course) throws Exception{
		course.setActiveFlag(0);
		course.setUpdateDate(new Date());
		log.info("Delete course "+course.toString());
		courseDAO.update(course);
	}
	public List<Course> findcourse(String property , Object value){
		log.info("=====Find by property course start====");
		log.info("property ="+property +" value"+ value.toString());
		return courseDAO.findByProperty(property, value);
	}
	public List<Course> getAllCourse(){
		log.info("show all course");
		return courseDAO.findAll();
	}
	public Course findByIdCourse(int id) {
		log.info("find course by id ="+id);
		return courseDAO.findById(Course.class, id);
	}
	public List<Course> getAllCourse(Course course, Paging paging) {
		StringBuilder queryStr = new StringBuilder();
		Map<String, Object> mapParams = new HashMap<>();
		return courseDAO.findAll(queryStr.toString(), mapParams, paging);
	}

}
