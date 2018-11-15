package com.sist.member.dao;

/*
 *ID       NOT NULL VARCHAR2(20)  
PWD      NOT NULL VARCHAR2(20)  
NAME     NOT NULL VARCHAR2(34)  
SEX               VARCHAR2(4)   
BIRTHDAY NOT NULL VARCHAR2(10)  
POST     NOT NULL CHAR(7)       
ADDR1    NOT NULL VARCHAR2(200) 
ADDR2             VARCHAR2(100) 
TEL      NOT NULL CHAR(13)      
CONTENT           CLOB          
REGDATE           DATE          
*/
import java.util.*;
public class MemberVO {
	private String id;
	private String pwd;
	private String name;
	private String sex;
	private String birthday;
	private String post;
	private String addr1;
	private String addr2;
	private String tel;
	private String content;
	private Date regdate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	
	
}
