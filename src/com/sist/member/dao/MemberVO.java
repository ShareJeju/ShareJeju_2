package com.sist.member.dao;

/*
ID               NOT NULL NUMBER         
USERID           NOT NULL VARCHAR2(15)   
PW               NOT NULL VARCHAR2(15)   
NAME             NOT NULL VARCHAR2(34)   
EMAIL            NOT NULL VARCHAR2(50)   
PHONE                     VARCHAR2(13)   
SEX              NOT NULL CHAR(1)        
BIRTH            NOT NULL VARCHAR2(8)    
REGION                    VARCHAR2(10)   
INTRO                     VARCHAR2(1000) 
PROFILE_IMG               VARCHAR2(260)  
PROFILE_IMG_SIZE          VARCHAR2(260)  
CREATED_AT                DATE           
UPDATED_AT                DATE           
ADMIN                     NUMBER         

*/
import java.util.*;
public class MemberVO {
	private int id;
	private String userid;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String sex; // M, F
	private String birth;
	private String region;
	private String intro;
	private String profile_img;
	private String profile_img_size;
	private Date created_at; // 생성시간
	private Date updated_at; // 수정시간
	private int admin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getProfile_img_size() {
		return profile_img_size;
	}
	public void setProfile_img_size(String profile_img_size) {
		this.profile_img_size = profile_img_size;
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
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	
	
}
