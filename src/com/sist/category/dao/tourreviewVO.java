package com.sist.category.dao;
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
import java.util.*;
public class tourreviewVO {
	
	private int review_id; //�����ȣ
	private int cid; // ������ȣ(�ܷ�Ű)
	private String review_userid; //�ۼ���
	private String review_content;
	private String review_subject;
	private Date review_regdate;
	private String review_img;
	private String review_img_size;
	
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
	public String getReview_img_size() {
		return review_img_size;
	}
	public void setReview_img_size(String review_img_size) {
		this.review_img_size = review_img_size;
	}
	
}