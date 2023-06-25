package com.board.model;

import java.sql.Date;

public class BoardVO {
	
	private Integer bno;
	private String useyn;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private Integer viewcnt;
	

	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Integer getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(Integer viewcnt) {
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", useyn=" + useyn + ", title=" + title + ", writer=" + writer + ", content="
				+ content + ", regdate=" + regdate + ", viewcnt=" + viewcnt + "]";
	}
}
