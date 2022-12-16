package jappan.model;
// Generated Jul 15, 2021, 10:46:24 PM by Hibernate Tools 5.4.30.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Comment generated by hbm2java
 */
public class CommentForm implements java.io.Serializable {

	private int lessionId;
	private int courseId;
	private String content;

	public CommentForm() {
	}

	public CommentForm(int lessionId, String content, int courseId) {
		super();
		this.lessionId = lessionId;
		this.content = content;
		this.courseId = courseId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getLessionId() {
		return lessionId;
	}

	public void setLessionId(int lessionId) {
		this.lessionId = lessionId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
