package com.sist.member.dao;
/*
 * ID	NUMBER	No		1	
TITLE	VARCHAR2(120 BYTE)	No		2	
HIT	NUMBER	Yes	0	3	
NEWS	NUMBER	Yes	1	4	
CONTENTS	CLOB	No		5	
FILES	VARCHAR2(260 BYTE)	Yes		6	
FILE_SIZE	VARCHAR2(260 BYTE)	Yes		7	
CREATED_AT	DATE	Yes	SYSDATE	8	
UPDATED_AT	DATE	Yes	SYSDATE	9	
 */
import java.util.*;
public class NoticeVO {
	private int id;
	private String title;
	private int hit;
	private int news; // 0 : news(기본) 1 : 공지
	private String contents;
	private String files;
	private String file_size;
	private Date created_at;
	private Date updated_at;
	
	private String cate;
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getNews() {
		return news;
	}
	public void setNews(int news) {
		this.news = news;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
}
