package jappan.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

import jappan.model.Chapter;
import jappan.model.Course;
import jappan.model.Paging;
import jappan.service.ChapterLessionService;


import jappan.service.CourseServive;
import jappan.util.Constant;
import jappan.validate.ChapterValidator;

@Controller
public class ChapterController {
	@Autowired
	private ChapterLessionService chapterService;
	@Autowired
	private ChapterValidator chapterValidator;
	@Autowired
	private CourseServive courseService;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		if (binder.getTarget() == null) {
			return;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		if (binder.getTarget().getClass() == Chapter.class) {
			binder.setValidator(chapterValidator);
		}
	}

	@RequestMapping(value = { "/chapter/list", "/chapter/list/" })
	public String redirect() {
		return "redirect:/chapter/list/1";
	}

	@RequestMapping(value = "/chapter/list/{page}")
	public String showChapterList(Model model, HttpSession session, @ModelAttribute("searchForm") Chapter chapter,
			@PathVariable("page") int page) {
		Paging paging = new Paging(10);
		paging.setIndexPage(page);
		List<Chapter> chapterList = chapterService.getListChapter(chapter, paging);
		if (session.getAttribute(Constant.MSG_SUCCESS) != null) {
			model.addAttribute(Constant.MSG_SUCCESS, session.getAttribute(Constant.MSG_SUCCESS));
			session.removeAttribute(Constant.MSG_SUCCESS);
		}
		if (session.getAttribute(Constant.MSG_ERROR) != null) {
			model.addAttribute(Constant.MSG_ERROR, session.getAttribute(Constant.MSG_ERROR));
			session.removeAttribute(Constant.MSG_ERROR);
		}
		model.addAttribute("pageInfo", paging);
		model.addAttribute("chapterList", chapterList);
		return "chapter-list";
	}

	@GetMapping("/chapter/add")
	public String addChapter(Model model) {
		model.addAttribute("titlePage", "Add Chapter");
		model.addAttribute("modelForm", new Chapter());
		List<Course> courses = courseService.getAllCourse(null, null);
		Map<String, String> mapCourses = new HashMap<>();
		for (Course course : courses) {
			mapCourses.put(String.valueOf(course.getId()), course.getCourseName());
		}
		model.addAttribute("mapCourses", mapCourses);
		model.addAttribute("viewOnly", false);
		return "chapter-action";
	}

	@GetMapping("/chapter/edit/{id}")
	public String edit(Model model, @PathVariable("id") int id) {
		Chapter chapter = chapterService.findByIdChapter(id);
		if (chapter != null) {
			List<Course> courses = courseService.getAllCourse(null, null);
			Map<String, String> mapCourses = new HashMap<>();
			for (Course course : courses) {
				mapCourses.put(String.valueOf(course.getId()), course.getCourseName());
			}
			chapter.setCourseId(chapter.getCourse().getId());
			model.addAttribute("mapCourses", mapCourses);
			model.addAttribute("titlePage", "Edit Chapter");
			model.addAttribute("modelForm", chapter);
			model.addAttribute("viewOnly", false);
			return "chapter-action";
		}
		return "redirect:/chapter/list";
	}

	@GetMapping("/chapter/view/{id}")
	public String viewChapter(Model model, @PathVariable("id") int id) {
		Chapter chapter = chapterService.findByIdChapter(id);
		if (chapter != null) {
			model.addAttribute("titlePage", "View Chapter");
			model.addAttribute("modelForm", chapter);
			model.addAttribute("viewOnly", true);
			return "chapter-action";
		}
		return "redirect:/chapter/list";
	}

	@GetMapping("/chapter/delete/{id}")
	public String deleteChapter(Model model, @PathVariable("id") int id, HttpSession session) {
		Chapter chapter = chapterService.findByIdChapter(id);
		if (chapter != null) {
			try {
				chapterService.deleteChapter(chapter);
				session.setAttribute(Constant.MSG_SUCCESS, "Delete Susscess!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Delete has Error!!!");
			}
		}
		return "redirect:/chapter/list";
	}

	@PostMapping("/chapter/save")
	public String save(Model model, @ModelAttribute("modelForm") @Validated Chapter chapter, BindingResult result,
			HttpSession session) {
		if (result.hasErrors()) {
			if (chapter.getId() != null) {
				model.addAttribute("titlePage", "Edit Chapter");
			} else {
				model.addAttribute("titlePage", "Add Chapter");
			}
			List<Course> courses = courseService.getAllCourse(null, null);
			Map<String, String> mapCourses = new HashMap<>();
			for (Course course : courses) {
				mapCourses.put(String.valueOf(course.getId()), course.getCourseName());
			}
			model.addAttribute("mapCourses", mapCourses);
			model.addAttribute("modelForm", chapter);
			model.addAttribute("viewOnly", false);
			return "chapter-action";
		}
		Course course = new Course();
		course.setId(chapter.getCourseId());
		chapter.setCourse(course);
		if (chapter.getId() != null && chapter.getId() != 0) {
			try {
				chapterService.updateChapter(chapter);
				session.setAttribute(Constant.MSG_SUCCESS, "Update Success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Update has Error!!!");
			}
		} else {
			try {
				chapterService.saveChapter(chapter);
				session.setAttribute(Constant.MSG_SUCCESS, "Insert Success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Insert has Error!!!");
			}
		}
		return "redirect:/chapter/list";
	}
	
}
