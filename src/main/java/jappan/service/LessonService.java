package jappan.service;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jappan.dao.LessionDAO;

import jappan.model.Lession;
import jappan.model.Paging;
import jappan.util.ConfigLoader;
import jappan.util.ConfigLoaders;

@Service
public class LessonService {
	@Autowired
	private LessionDAO<Lession> lessonDAO;
	final static Logger log= Logger.getLogger(LessonService.class);
	
	//
	public void updateLesson(Lession lession) throws Exception{
		log.info("Update ProductInfo"+lession.toString());
		
		if(!lession.getMultipartFile().getOriginalFilename().isEmpty()) {
			String fileName=System.currentTimeMillis()+"_"+lession.getMultipartFile().getOriginalFilename();
			processUploadFile(lession.getMultipartFile(), fileName);
			lession.setContent("/upload/"+fileName);
			
		}
		if(!lession.getMultipartFiles().getOriginalFilename().isEmpty()) {
			String fileNames=System.currentTimeMillis()+"_"+lession.getMultipartFiles().getOriginalFilename();
			processUploadFiles(lession.getMultipartFiles(), fileNames);
			lession.setStatus("/uploads/"+fileNames);
		}
		lession.setUpdateDate(new Date());
		lessonDAO.update(lession);
	}
	//
	public void deleteLesson(Lession lession) throws Exception {
		lession.setActiveFlag(0);
		lession.setUpdateDate(new Date());
		log.info("Delete Lesson"+lession.toString());
		lessonDAO.update(lession);
	}
	//
	public void saveLesson(Lession lession) throws Exception {
		log.info("Insert lession"+lession.toString());
		lession.setActiveFlag(1);
		lession.setCreateDate(new Date());
		lession.setUpdateDate(new Date());
		String fileName=System.currentTimeMillis()+"_"+lession.getMultipartFile().getOriginalFilename();
		processUploadFile(lession.getMultipartFile(), fileName);
		lession.setContent("/upload/"+fileName);
		
		String fileNames=System.currentTimeMillis()+"_"+lession.getMultipartFiles().getOriginalFilename();
		processUploadFiles(lession.getMultipartFiles(), fileNames);
		lession.setStatus("/uploads/"+fileNames);
		
		lessonDAO.save(lession);
	}
	//
	public List<Lession> findByLesson(String property, Object value){
		log.info("====Find by property Lession start =======");
		log.info("property ="+property+" value ="+value.toString());
		return lessonDAO.findByProperty(property, value);
	}
	//
	public List<Lession> getAllLesson(Lession lession, Paging paging){
		log.info("show all Lesson");
		StringBuilder queryStr= new StringBuilder();
		Map<String, Object> mapParams =new HashMap<>();
		return lessonDAO.findAll(queryStr.toString(), mapParams, paging);
	}
	//
	public Lession findByIdLesson(int id) {
		log.info("find Lesson by id"+id);
		return lessonDAO.findById(Lession.class, id);
	}
	
	public void processUploadFile(MultipartFile multipartFile, String fileName) throws IllegalStateException, IOException {
		if(!multipartFile.getOriginalFilename().isEmpty()) {
			File dir= new File(ConfigLoader.getInstance().getValue("upload.location"));
			if(!dir.exists()) {
				dir.mkdirs();
			}
			File file = new File(ConfigLoader.getInstance().getValue("upload.location"),fileName);
			multipartFile.transferTo(file);
		}
	}
	public void processUploadFiles(MultipartFile multipartFile, String fileNames) throws IllegalStateException, IOException {
		if(!multipartFile.getOriginalFilename().isEmpty()) {
			File dir= new File(ConfigLoaders.getInstance().getValue("upload.locations"));
			if(!dir.exists()) {
				dir.mkdirs();
			}
			File file = new File(ConfigLoaders.getInstance().getValue("upload.locations"),fileNames);
			multipartFile.transferTo(file);
		}
	}
}
