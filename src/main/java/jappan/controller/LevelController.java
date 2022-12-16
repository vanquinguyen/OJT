package jappan.controller;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jappan.model.Exam;
import jappan.model.ExamPart;
import jappan.model.Level;
import jappan.service.ExamService;
import jappan.service.LevelService;

@Controller
public class LevelController {
	@Autowired
	private LevelService levelService;
	@Autowired
	private ExamService examService;
	
	@GetMapping("/luyenthi-n")
	public String showListLevel(Model model) {
		List<Level> levels= levelService.getAllLevel();
		model.addAttribute("levels", levels);
		return"list-level";
	}
	
	@RequestMapping(value="/luyenthi-n{id}")
	public String LevelById(Model model, @PathVariable("id")int id) {
		Level levels= levelService.findByIdLevel(id);
		List<ExamPart> examPart= examService.getAllExamPart();
		List<Exam> listExam = new ArrayList<Exam>(levels.getExams());
		
		model.addAttribute("levels", levels);
		model.addAttribute("listExam", listExam);
		model.addAttribute("examPart", examPart);
		
		return "list-exam";
	}
	

}
