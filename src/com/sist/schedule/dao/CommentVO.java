package com.sist.schedule.dao;

import java.util.Date;

/*
ID          NOT NULL NUMBER         
SID NOT NULL NUMBER         
MEMBER_ID            NUMBER         
CONTENT     NOT NULL VARCHAR2(1000) 
CREATED_AT           DATE           
UPDATE_AT            DATE           
 */
public class CommentVO {
	private int id;
	private int sid; // 게시물 참조번호
	private int member_id; // userid==SessionScopeId 수정,삭제가능
	private String content;
	private Date created_at;
	private Date updated_at;
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
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
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
