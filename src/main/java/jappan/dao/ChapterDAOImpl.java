package jappan.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Chapter;

@Repository
@Transactional(rollbackFor=Exception.class)
public class ChapterDAOImpl extends BaseDAOImpl<Chapter> implements ChapterDAO<Chapter> {

	

}
