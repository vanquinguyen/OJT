package jappan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jappan.model.Chapter;
import jappan.model.Course;
import jappan.model.Lession;
import jappan.model.Users;
import jappan.service.ChapterLessionService;
import jappan.service.CourseServive;
import jappan.service.LessonService;
import jappan.service.UserService;

@Controller
public class indexController {
	@Autowired
	private CourseServive courseService;
	@Autowired
	private UserService userService;
	@Autowired
	private ChapterLessionService chapterLessonService;
	@Autowired
	private LessonService lessonService;
	
	
	@GetMapping("/index") 
	public String Index() {
		return "home";
	}
	@GetMapping("/gioithieu") 
	public String gioiThieu() {
		return "gioithieu";
	}
	@GetMapping("/admin") 
	public String IndexAdmin(Model model) {
		List<Course> courses= courseService.getAllCourse();
		model.addAttribute("courses", courses);
		List<Users> users= userService.getUsersList(null, null);
		model.addAttribute("users", users);
		List<Chapter> chapter= chapterLessonService.getListChapter(null, null);
		List<Lession> lesson=lessonService.getAllLesson(null, null);
		model.addAttribute("chapter", chapter);
		model.addAttribute("lesson", lesson);
		return "admin";
	}

}
