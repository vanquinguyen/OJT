package jappan.model;
// Generated Aug 6, 2021, 8:42:35 PM by Hibernate Tools 5.4.30.Final

import java.util.Date;

/**
 * Answer generated by hbm2java
 */
public class Answer implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Question question;
	private String content;
	private boolean correct;
	private int activeFlag;
	private Date createDate;
	private Date updateDate;

	

	public Answer() {
	}

	public Answer(Question question, String content, boolean correct, int activeFlag, Date createDate, Date updateDate) {
		this.question = question;
		this.content = content;
		this.correct = correct;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	

	public int getActiveFlag() {
		return this.activeFlag;
	}

	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

}