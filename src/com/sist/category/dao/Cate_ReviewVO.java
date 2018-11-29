package com.sist.category.dao;
import java.util.*;

/*
 * 
 * review_id NUMBER,
    cid NUMBER,
    review_userid VARCHAR2(20) CONSTRAINT scr_review_userid_nn NOT NULL,
    review_content VARCHAR2(2000) CONSTRAINT scr_review_content_nn NOT NULL,
    review_subject VARCHAR2(100) CONSTRAINT scr_review_subject_nn NOT NULL,
    profile_img VARCHAR2(260),
    profile_img_size VARCHAR2(260),
    review_regdate DATE DEFAULT SYSDATE,
    group_id NUMBER,
    group_step NUMBER DEFAULT 0,
    group_tab NUMBER DEFAULT 0,
    root NUMBER DEFAULT 0,
    depth NUMBER DEFAULT 0,
 */
public class Cate_ReviewVO {
  private int review_id;
  private int cid; //게시물 참조 번호 
  private String review_userid;
  private String review_content;
  private String review_subject;
  private Date review_regdate;
  private String dbday;
  private String review_img;
  private String review_img_size;
  private String profile;
  private String cate; // 카테고리 변수 필요하여 삽입
  
public String getCate() {
	return cate;
}
public void setCate(String cate) {
	this.cate = cate;
}
public int getReview_id() {
	return review_id;
}
public void setReview_id(int review_id) {
	this.review_id = review_id;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getReview_userid() {
	return review_userid;
}
public void setReview_userid(String review_userid) {
	this.review_userid = review_userid;
}
public String getReview_content() {
	return review_content;
}
public void setReview_content(String review_content) {
	this.review_content = review_content;
}
public String getReview_subject() {
	return review_subject;
}
public void setReview_subject(String review_subject) {
	this.review_subject = review_subject;
}
public Date getReview_regdate() {
	return review_regdate;
}
public void setReview_regdate(Date review_regdate) {
	this.review_regdate = review_regdate;
}
public String getDbday() {
	return dbday;
}
public void setDbday(String dbday) {
	this.dbday = dbday;
}
public String getReview_img() {
	return review_img;
}
public void setReview_img(String review_img) {
	this.review_img = review_img;
}
public String getReview_img_size() {
	return review_img_size;
}
public void setReview_img_size(String review_img_size) {
	this.review_img_size = review_img_size;
}
public String getProfile() {
	return profile;
}
public void setProfile(String profile) {
	this.profile = profile;
}

  
}