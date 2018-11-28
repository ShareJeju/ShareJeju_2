package com.sist.category.dao;
import java.sql.*;

/*
ID       NOT NULL NUMBER         
ADDR     NOT NULL VARCHAR2(200)  
COST              VARCHAR2(30)   
TIME              VARCHAR2(100)  
TEL               VARCHAR2(100)  
WISH              NUMBER         
LIKES             NUMBER         
HIT               NUMBER         
NAME     NOT NULL VARCHAR2(100)  
REGDATE           DATE           
IMG               VARCHAR2(260)  
IMG_SIZE          VARCHAR2(260)  
TEXT              VARCHAR2(4000) 
MENU              VARCHAR2(500)  
WEBSITE           VARCHAR2(200)  
CATEGORY          VARCHAR2(20)   
MAP               VARCHAR2(50)   
 */
public class CategoryVO {
	
	private int id;
	private String addr;
	private String cost;
	private String time;
	private String tel;
	private int wish;
	private int likes;
	private int hit;
	private String name;
	private Date regdate;
	private String img;
	private String img_size;
	private String text;
	private String menu;
	private String website;
	private String category;
	private String map;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getWish() {
		return wish;
	}
	public void setWish(int wish) {
		this.wish = wish;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	
}
