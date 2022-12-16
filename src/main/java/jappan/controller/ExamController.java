package jappan.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jappan.model.Chapter;
import jappan.model.Exam;
import jappan.model.ExamPart;
import jappan.model.Question;
import jappan.service.ExamService;
import jappan.util.Constant;

@Controller
public class ExamController {
	@Autowired
	private ExamService examService;
	@RequestMapping(value="/exam-{id}")
	public String ExamPartById(Model model,@PathVariable("id")int id,HttpSession session) {
		Exam exam=examService.findByIdExam(id);
		List<Question> listQuestion= new ArrayList<Question>(exam.getQuestions());
		sortQuestion(listQuestion);
		model.addAttribute("exam", exam);
		model.addAttribute("QuestionList", listQuestion);
		
		if(session.getAttribute(Constant.MSG_ERROR)!=null) {
			model.addAttribute(Constant.MSG_ERROR, session.getAttribute(Constant.MSG_ERROR));
			session.removeAttribute(Constant.MSG_ERROR);
		}
		return "exam/exam-action";
		
	}
	
	@RequestMapping(value="/exam-{id}/submit")
	public String submit(Model model,@PathVariable("id")int id, HttpServletRequest request, HttpSession session) {
		try {
			int score=0;
			//Exam exam=examService.findByIdExam(id);
			String [] questionIds= request.getParameterValues("questionId");
			for(String questionId: questionIds) {
				System.out.println(questionId);
				int answerIdCorrect= examService.findAnswerIdCorrect(Integer.parseInt(questionId));
				if(answerIdCorrect==Integer.parseInt(request.getParameter("question_"+questionId))) {
					score++;
				}
			}
			
			request.setAttribute("score", score);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.setAttribute(Constant.MSG_ERROR, "Please Choose All Ansewr !");
			return "redirect:/exam-{id}";
			
			
		}
		
		return "result";
	}
	
	private void sortQuestion(List<Question> question) {
		Collections.sort(question, new Comparator<Question>() {

			@Override
			public int compare(Question o1, Question o2) {
				return o1.getId() - o2.getId();

			}
		});
	}

}
