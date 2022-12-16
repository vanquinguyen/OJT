package jappan.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import jappan.model.Chapter;
import jappan.model.Lession;
import jappan.model.Paging;
import jappan.service.ChapterLessionService;

import jappan.service.LessonService;
import jappan.util.Constant;
import jappan.validate.LessonValidator;


@Controller
public class LessonController {
	@Autowired
	private LessonService lessonService;
	@Autowired
	private ChapterLessionService chapterService;
	@Autowired
	private LessonValidator lessonValidator;
	static final Logger log = Logger.getLogger(LessonController.class);
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		if(binder.getTarget()==null) {
			return;
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		if(binder.getTarget().getClass()== Lession.class) {
			binder.setValidator(lessonValidator);
		}
	}
	
	@RequestMapping(value= {"/lesson/list","/lesson/list/"})
	public String redirect() {
		return "redirect:/lesson/list/1";
	}


	@RequestMapping(value="/lesson/list/{page}")
	public String showLesson(Model model,HttpSession session , @ModelAttribute("searchForm") Lession lession, @PathVariable("page") int page) {
		Paging paging = new Paging(10);
		paging.setIndexPage(page);
		List<Lession> lessions = lessonService.getAllLesson(lession,paging);
		if(session.getAttribute(Constant.MSG_SUCCESS)!=null ) {
			model.addAttribute(Constant.MSG_SUCCESS, session.getAttribute(Constant.MSG_SUCCESS));
			session.removeAttribute(Constant.MSG_SUCCESS);
		}
		if(session.getAttribute(Constant.MSG_ERROR)!=null ) {
			model.addAttribute(Constant.MSG_ERROR, session.getAttribute(Constant.MSG_ERROR));
			session.removeAttribute(Constant.MSG_ERROR);
		}
		model.addAttribute("pageInfo", paging);
		model.addAttribute("lessions", lessions);
		return "lesson-list";
		
	}

	@GetMapping("/lesson/add")
	public String add(Model model) {
		model.addAttribute("titlePage", "Add Lesson");
		model.addAttribute("modelForm", new Lession());
		List<Chapter> chapters = chapterService.getListChapter(null, null);
		Map<String, String> mapChapters = new HashMap<>();
		for(Chapter chapter : chapters) {
			mapChapters.put(String.valueOf(chapter.getId()), chapter.getChapterName());			
		}
		model.addAttribute("mapChapters", mapChapters);
		model.addAttribute("viewOnly", false);
		return "lesson-action";
	}

	@GetMapping("/lesson/edit/{id}")
	public String edit(Model model , @PathVariable("id") int id) {
		log.info("Edit productInfo with id="+id);
		Lession lession = lessonService.findByIdLesson(id);
		if(lession!=null) {
			List<Chapter> chapters = chapterService.getListChapter(null, null);
			Map<String, String> mapChapters = new HashMap<>();
			for(Chapter chapter : chapters) {
				mapChapters.put(String.valueOf(chapter.getId()), chapter.getChapterName());			
			}
			lession.setChapterId(lession.getChapter().getId());
			model.addAttribute("mapChapters", mapChapters);
			model.addAttribute("titlePage", "Edit Lesson");
			model.addAttribute("modelForm", lession);
			model.addAttribute("viewOnly", false);
			return "lesson-action";
		}
		return "redirect:/lesson/list";
	}

	@GetMapping("/lesson/view/{id}")
	public String view(Model model , @PathVariable("id") int id) {
		log.info("View Lesson with id="+id);
		Lession lession = lessonService.findByIdLesson(id);
		if(lession!=null) {
			model.addAttribute("titlePage", "View Lesson");
			model.addAttribute("modelForm", lession);
			model.addAttribute("viewOnly", true);
			return "lesson-action";
		}
		return "redirect:/lesson/list";
	}

	@PostMapping("/lesson/save")
	public String save(Model model,@ModelAttribute("modelForm") @Validated Lession lession,BindingResult result,HttpSession session) {
		if(result.hasErrors()) {
			if(lession.getId()!=null) {
				model.addAttribute("titlePage", "Edit Lesson");
			}else {
				model.addAttribute("titlePage", "Add Lesson");
			}
			List<Chapter> chapters = chapterService.getListChapter(null, null);
			Map<String, String> mapChapters = new HashMap<>();
			for(Chapter chapter : chapters) {
				mapChapters.put(String.valueOf(chapter.getId()), chapter.getChapterName());			
			}
			model.addAttribute("mapChapters", mapChapters);
			model.addAttribute("modelForm", lession);
			model.addAttribute("viewOnly", false);
			return "lesson-action";
			
		}
		Chapter chapter = new Chapter();
		chapter.setId(lession.getChapterId());
		lession.setChapter(chapter);
		
		if(lession.getId()!=null && lession.getId()!=0) {
			try {
				
				lessonService.updateLesson(lession);
				session.setAttribute(Constant.MSG_SUCCESS, "Update success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e.getMessage());
				session.setAttribute(Constant.MSG_ERROR, "Update has error");
			}
			
		}else {
				try {
					lessonService.saveLesson(lession);
					session.setAttribute(Constant.MSG_SUCCESS, "Insert success!!!");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					session.setAttribute(Constant.MSG_ERROR, "Insert has error!!!");
				}
		}
		return "redirect:/lesson/list";
	}

	@GetMapping("/lesson/delete/{id}")
	public String delete(Model model , @PathVariable("id") int id,HttpSession session) {
		log.info("Delete Lesson with id="+id);
		Lession lession = lessonService.findByIdLesson(id);
		if(lession!=null) {
			try {
				lessonService.deleteLesson(lession);
				session.setAttribute(Constant.MSG_SUCCESS, "Delete success!!!");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute(Constant.MSG_ERROR, "Delete has error!!!");
			}
		}
		return "redirect:/lesson/list";
	}
}
