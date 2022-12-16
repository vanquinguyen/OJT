package jappan.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import jappan.model.Chapter;
import jappan.model.Comment;
import jappan.model.CommentForm;
import jappan.model.Course;
import jappan.model.Lession;
import jappan.model.Paging;
import jappan.model.Users;
import jappan.service.ChapterLessionService;
import jappan.service.CourseServive;
import jappan.service.LessonService;
import jappan.util.Constant;
import jappan.validate.CourseValidator;

@Controller
public class CourseController {
	@Autowired
	private CourseServive courseService;

	@Autowired
	private LessonService lessionService;
	@Autowired
	private CourseValidator courseValidator;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		if(binder.getTarget()==null) {
			return;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		if(binder.getTarget().getClass() == Course.class) {
			binder.setValidator(courseValidator);
		}
	}
	@Autowired
	private ChapterLessionService chapLessonService;
	static final Logger log = Logger.getLogger(CourseController.class);

	@GetMapping("/course")
	public String showCourseList(Model model) {
		List<Course> courses = courseService.getAllCourse();
		model.addAttribute("courses", courses);
		return "course-listUser";
	}

	@GetMapping("bangchucai")
	public String bangchucai() {
		return "bangchucai";
	}

	@GetMapping("hiragana")
	public String hiragana() {
		return "hiragana";
	}

	@RequestMapping(value = "/course-{id}")
	public String courseById(Model model, @PathVariable("id") int id) {
		Course courses = courseService.findByIdCourse(id);
		List<Chapter> listChapter = new ArrayList<Chapter>(courses.getChapters());
		sortChapter(listChapter);

		model.addAttribute("courses", courses);
		model.addAttribute("chapterList", listChapter);

		return "course-action";
	}

	@GetMapping("/course/lession")
	public String showLession(Model model) {
		return "lession-action";
	}

	@GetMapping("/course-{courseid}/lession-{lessionid}")
	public String lessionById(Model model, @PathVariable("courseid") int courseid,
			@PathVariable("lessionid") int lessionid) {
		Course courses = courseService.findByIdCourse(courseid);
		List<Chapter> listChapter = new ArrayList<Chapter>(courses.getChapters());
		sortChapter(listChapter);
		model.addAttribute("courses", courses);
		model.addAttribute("chapterList", listChapter);
		Lession lession = chapLessonService.findByIdLession(lessionid);
		model.addAttribute("lession", lession);
		List<Comment> comments = chapLessonService.getAllComment();
		model.addAttribute("comments", comments);
		CommentForm comment = new CommentForm();
		comment.setLessionId(lessionid);
		comment.setCourseId(courseid);
		model.addAttribute("commentForm", comment);
		return "lession-action";
	}

	@PostMapping("/addcomment")
	public String addComment(Model model, @ModelAttribute("commentForm") CommentForm comment, BindingResult result,
			HttpServletRequest request) {
		Comment cm = new Comment();
		Users users = (Users) request.getSession().getAttribute(Constant.USER_INFO);
		cm.setUsers(users);
		cm.setContent(comment.getContent());
		cm.setLession(lessionService.findByIdLesson(comment.getLessionId()));
		chapLessonService.saveComment(cm);
		return lessionById(model, comment.getCourseId(), comment.getLessionId());
	}

	private void sortChapter(List<Chapter> chapters) {
		Collections.sort(chapters, new Comparator<Chapter>() {

			@Override
			public int compare(Chapter o1, Chapter o2) {
				return o1.getId() - o2.getId();

			}
		});
	}
	
	//CRUD Course in Admin
	@RequestMapping(value = {"/category/list","/category/list/"})
	public String redirect() {
		return "redirect:/category/list/1";
	}
	
	@RequestMapping(value = "/category/list/{page}")
	public String showListcourses(Model model, @ModelAttribute("searchForm") Course course, @PathVariable("page") int page, HttpSession session) {
		Paging paging=new Paging(10);
		paging.setIndexPage(page);
		List<Course> listCourse= courseService.getAllCourse(course, paging);
		if(session.getAttribute(Constant.MSG_SUCCESS) != null) {
			model.addAttribute(Constant.MSG_SUCCESS, session.getAttribute(Constant.MSG_SUCCESS));
			session.removeAttribute(Constant.MSG_SUCCESS);
		}
		if(session.getAttribute(Constant.MSG_ERROR) != null) {
			model.addAttribute(Constant.MSG_ERROR, session.getAttribute(Constant.MSG_ERROR));
			session.removeAttribute(Constant.MSG_ERROR);
		}		
		model.addAttribute("pageInfo", paging);
		model.addAttribute("listCourse", listCourse);
		return "category-list";
	}
	
	@GetMapping("/category/add")
	public String addCourse(Model model) {
		model.addAttribute("titlePage", "Add Course");
		model.addAttribute("modelForm", new Course());
		model.addAttribute("viewOnly", false);
		return "category-action";
	}
	@GetMapping("/category/view/{id}")
	public String viewCourse(Model model, @PathVariable("id") int id) {
	   Course course = courseService.findByIdCourse(id);
	   if(course!=null) {
		   model.addAttribute("titlePage", "View Course");
		   model.addAttribute("modelForm", course);
		   model.addAttribute("viewOnly", true);
		   return "category-action";
	   }
	   return "redirect:/category/list";
	}
	@GetMapping("/category/edit/{id}")
	public String editCourse(Model model, @PathVariable("id") int id) {
		Course course = courseService.findByIdCourse(id);
		 if(course!=null) {
			   model.addAttribute("titlePage", "Edit Course");
			   model.addAttribute("modelForm", course);
			   model.addAttribute("viewOnly", false);
			   return "category-action";
		   }
		   return "redirect:/category/list";
	}
	
	@GetMapping("/category/delete/{id}")
	public String deleteCourse(Model model, @PathVariable("id") int id, HttpSession session) {
		Course course = courseService.findByIdCourse(id);
		if(course!=null) {
			try {
				courseService.deleteCourse(course);
				session.setAttribute(Constant.MSG_SUCCESS, "Delete Success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Delete has Error!!!");
			}
		}
		return "redirect:/category/list";
	}
	
	@RequestMapping("/category/save")
	public String saveCourse(Model model, @ModelAttribute("modelForm") @Validated Course course, BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			if(course.getId()!=null) {
				model.addAttribute("titlePage", "Edit Course");
			}
			else {
				model.addAttribute("titlePage", "Add Course");
			}
			model.addAttribute("modelForm", course);
			model.addAttribute("viewOnly", false);
			return "category-action";
		}
		if(course.getId()!=null && course.getId()!=0) {
			try {
				courseService.updateCourse(course);
				session.setAttribute(Constant.MSG_SUCCESS, "Update Success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Update has Error!!!");
			}
		}else {
			try {
				courseService.saveCourse(course);
				session.setAttribute(Constant.MSG_SUCCESS, "Insert Success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Insert has Error!!!");
			}
		}
		return "redirect:/category/list";
		
	}
}
