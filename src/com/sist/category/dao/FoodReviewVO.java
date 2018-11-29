package com.sist.category.dao;
import java.util.*;
/*
REVIEW_ID       NOT NULL NUMBER         
CID                      NUMBER         
REVIEW_USERID   NOT NULL VARCHAR2(20)   
REVIEW_CONTENT  NOT NULL VARCHAR2(2000) 
REVIEW_SUBJECT  NOT NULL VARCHAR2(100)  
REVIEW_REGDATE           DATE           
REVIEW_IMG               VARCHAR2(260)  
REVIEW_IMG_SIZE          VARCHAR2(260)      
     
 */
public class FoodReviewVO {
	private int review_id; //리뷰 번호
	private int cid; //상세정보 참조번호(외래키)
	private String review_userid;
	private String review_content;
	private String review_subject;
	private Date review_regdate;
	private String review_img;
	private String profile_img;
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
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
	public String getReview_img() {
		return review_img;
	}
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	
	
}
