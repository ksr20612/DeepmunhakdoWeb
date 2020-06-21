package com.ku.deepmunhakdo.vo;

public class ProjectVO {

	private String projectIdx;
	private String title;
	private String postDate;
	private String readCount;
	
	public ProjectVO() {}
	
	public ProjectVO(String projectIdx, String title, String postDate, String readCount) {
		super();
		this.projectIdx = projectIdx;
		this.title = title;
		this.postDate = postDate;
		this.readCount = readCount;
	}

	public String getProjectIdx() {
		return projectIdx;
	}

	public void setProjectIdx(String projectIdx) {
		this.projectIdx = projectIdx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public String getReadCount() {
		return readCount;
	}

	public void setReadCount(String readCount) {
		this.readCount = readCount;
	}
}
