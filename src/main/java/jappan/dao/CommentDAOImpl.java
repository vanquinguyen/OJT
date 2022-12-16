package jappan.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jappan.model.Comment;

@Repository
@Transactional(rollbackFor = Exception.class)
public class CommentDAOImpl extends BaseDAOImpl<Comment> implements CommentDAO<Comment>  {

}
