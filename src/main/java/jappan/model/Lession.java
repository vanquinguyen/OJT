package jappan.model;
// Generated Jul 15, 2021, 10:46:24 PM by Hibernate Tools 5.4.30.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

/**
 * Lession generated by hbm2java
 */
public class Lession implements java.io.Serializable {

	private Integer id;
	private Chapter chapter;
	private String lessionName;
	private String urlVideo;
	private String content;
	private String status;
	private int activeFlag;
	private Date createDate;
	private Date updateDate;
	private Set comments = new HashSet(0);
	private MultipartFile multipartFile;
	private MultipartFile multipartFiles;
	private Integer chapterId;
	public Lession() {
	}

	public Lession(Chapter chapter, String lessionName, String urlVideo, String status, int activeFlag, Date createDate,
			Date updateDate) {
		this.chapter = chapter;
		this.lessionName = lessionName;
		this.urlVideo = urlVideo;
		this.status = status;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public Lession(Chapter chapter, String lessionName, String urlVideo, String content, String status, int activeFlag,
			Date createDate, Date updateDate, Set comments) {
		this.chapter = chapter;
		this.lessionName = lessionName;
		this.urlVideo = urlVideo;
		this.content = content;
		this.status = status;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.comments = comments;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Chapter getChapter() {
		return this.chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public String getLessionName() {
		return this.lessionName;
	}

	public void setLessionName(String lessionName) {
		this.lessionName = lessionName;
	}

	public String getUrlVideo() {
		return this.urlVideo;
	}

	public void setUrlVideo(String urlVideo) {
		this.urlVideo = urlVideo;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public MultipartFile getMultipartFile() {
		return multipartFile;
	}

	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}

	
	public MultipartFile getMultipartFiles() {
		return multipartFiles;
	}

	public void setMultipartFiles(MultipartFile multipartFiles) {
		this.multipartFiles = multipartFiles;
	}

	public Integer getChapterId() {
		return chapterId;
	}

	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
	}
	

}