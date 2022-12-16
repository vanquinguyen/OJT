package jappan.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jappan.dao.LevelDAO;
import jappan.model.Level;

@Service
public class LevelService {
	@Autowired
	private LevelDAO<Level> levelDAO;
	private static final Logger log = Logger.getLogger(LevelService.class);
	public List<Level> getAllLevel() {
		log.info("show all level");
		return levelDAO.findAll();
	}
	
	public Level findByIdLevel(int id) {
		log.info("find level by id="+id);
		return levelDAO.findById(Level.class, id);
	}

}
