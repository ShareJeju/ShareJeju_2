package com.sist.schedule.dao;

import java.util.Date;

/*
ID         NOT NULL NUMBER         
SID        NOT NULL NUMBER         
CONTENT    NOT NULL VARCHAR2(1000) 
CREATED_AT          DATE           
UPDATE_AT           DATE           
USERID              VARCHAR2(15)     
 */
public class CommentVO {
	private int id;
	private int sid; // 게시물 참조번호
	private String content;
	private Date created_at;
	private Date updated_at;
	private String userid;
	private String name;
	private String profile;
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
