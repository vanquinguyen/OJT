package jappan.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jappan.dao.ExamDAO;
import jappan.dao.ExamPartDAO;
import jappan.dao.QuestionDAO;
import jappan.model.Answer;
import jappan.model.Exam;
import jappan.model.ExamPart;
import jappan.model.Question;

@Service
public class ExamService {
	@Autowired
	private ExamPartDAO<ExamPart> examPartDAO;
	@Autowired
	private ExamDAO<Exam> examDAO;
	@Autowired 
	private QuestionDAO<Question> questionDAO;
	private static final Logger log= Logger.getLogger(ExamService.class);
	public List<ExamPart> getAllExamPart() {
		log.info("show all ExamPart");
		return examPartDAO.findAll();
	}
	public ExamPart findByIdExamPart(int id) {
		log.info("find examPart by Id"+id);
		return examPartDAO.findById(ExamPart.class, id);
	}
	
	
	
	//Exam
	
	public Exam findByIdExam(int id) {
		log.info("find exam by id"+id);
		return examDAO.findById(Exam.class, id);
	}

	
	
	
	
	
	//Question
		
	  public int findAnswerIdCorrect(int questionId) {
		  Question question =questionDAO.findById(Question.class, questionId);
		  for(Answer answer : question.getAnswers()) {
			  if(answer.isCorrect()) {
				  return answer.getId();
			  }
		  } 
		  return -1;
	}
	 
}
