package com.sist.schedule.dao;
import oracle.sql.*;

public class ScheduleVO {
/*
 CREATE TABLE sj_tourreview(
id NUMBER,
main_img VARCHAR2(260),
main_img_size VARCHAR2(260),
img VARCHAR2(260),
img_size VARCHAR2(260),
title VARCHAR2(100) CONSTRAINT sj_tourreview_title_nn NOT NULL,
day VARCHAR2(200),
likes NUMBER,
text CLOB CONSTRAINT sj_tourreview_text_nn NOT NULL,
hashtag VARCHAR2(100),
term VARCHAR2(10) CONSTRAINT sj_tourreview_term_nn NOT NULL,
member_id NUMBER CONSTRAINT sj_tourreview_member_id_nn NOT NULL,

ID            NOT NULL NUMBER        
MAIN_IMG               VARCHAR2(260) 
MAIN_IMG_SIZE          VARCHAR2(260) 
IMG                    VARCHAR2(260) 
IMG_SIZE               VARCHAR2(260) 
TITLE         NOT NULL VARCHAR2(100) 
DAY                    VARCHAR2(200) 
LIKES                  NUMBER        
TEXT          NOT NULL CLOB          
HASHTAG                VARCHAR2(100) 
TERM          NOT NULL VARCHAR2(10)  
MEMBER_ID     NOT NULL NUMBER        
CREATED_AT             DATE          
UPDATED_AT             DATE  
 */
	private int id;
	private String main_img;
	private String main_img_size;
	private String img;
	private String img_size;
	private String title;
	private String day;
	private int likes;
	private String text;
	private String hashtag;
	private String term;
	private int member_id;
	private DATE created_at;
	private DATE updated_at;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getMain_img_size() {
		return main_img_size;
	}
	public void setMain_img_size(String main_img_size) {
		this.main_img_size = main_img_size;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getImg_size() {
		return img_size;
	}
	public void setImg_size(String img_size) {
		this.img_size = img_size;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public DATE getCreated_at() {
		return created_at;
	}
	public void setCreated_at(DATE created_at) {
		this.created_at = created_at;
	}
	public DATE getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(DATE updated_at) {
		this.updated_at = updated_at;
	}
	
	
}
