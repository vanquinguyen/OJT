package jappan.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import jappan.dao.ChapterDAO;
import jappan.dao.CommentDAO;
import jappan.dao.LessionDAO;
import jappan.model.Chapter;
import jappan.model.Comment;
import jappan.model.Lession;
import jappan.model.Paging;
import jappan.model.Users;

@Service
public class ChapterLessionService {
	@Autowired
	private ChapterDAO<Chapter> chapterDAO;
	@Autowired
	private LessionDAO<Lession> lessionDAO;
	@Autowired
	private CommentDAO<Comment> commentDAO;
	
	private static final Logger log = Logger.getLogger(ChapterLessionService.class);
	public List<Chapter> getChapterByCourseId(String property, Object value) {
		log.info("find all chapter by courseId");
		log.info("proprety"+property+"value: "+ value);
		return chapterDAO.findByProperty(property, value);
	}
	public List<Chapter> getListChapter(Chapter chapter, Paging paging){
		log.info("Show list Chapter");
		StringBuilder queryStr = new StringBuilder();
		Map<String, Object> mapParams = new HashMap<>();
		if(chapter!=null) {
			if(!StringUtils.isEmpty(chapter.getChapterName()) && chapter.getChapterName()!=null) {
				queryStr.append(" and model.chapterName like :chapterName");
				mapParams.put("chapterName", "%"+chapter.getChapterName()+"%");
			}
		}
		return chapterDAO.findAll(queryStr.toString(), mapParams , paging);
	}
	
	public void updateChapter(Chapter chapter) throws Exception {
		log.info("Update Chapter"+chapter.toString());
		chapter.setUpdateDate(new Date());
		chapterDAO.update(chapter);
	}
	public void deleteChapter(Chapter chapter) throws Exception{
		log.info("Delete Chapter"+chapter.toString());
		chapter.setActiveFlag(0);
		chapter.setUpdateDate(new Date());
		chapterDAO.update(chapter);
	}
	public void saveChapter(Chapter chapter) throws Exception{
		log.info("Insert Chapter "+chapter.toString());
		chapter.setActiveFlag(1);
		chapter.setCreateDate(new Date());
		chapter.setUpdateDate(new Date());
		chapterDAO.save(chapter);
	}
	public Chapter findByIdChapter(int id) {
		log.info("find Chapter by Id"+id);
		return chapterDAO.findById(Chapter.class, id);
	}

	
	
	
	
	
	//lesson
	public Lession findByIdLession(int id) {
		log.info("find lession by id="+id);
		return lessionDAO.findById(Lession.class,id);
	}
	
	
	
	
	//comment 
	public void saveComment(Comment comment) {
		log.info("insert comment"+comment.toString());
		comment.setActiveFlag(1);
		comment.setCreateDate(new Date());
		comment.setUpdateDate(new Date());
		commentDAO.save(comment);
	}
	
	
	
	
	
	//comment
	
	public List<Comment> getAllComment() {
		log.info("get all comment ");
		return commentDAO.findAll();
	}
	
	
	
	
	
	}

