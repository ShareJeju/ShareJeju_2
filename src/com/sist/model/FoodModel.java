package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.category.dao.*;

import com.sist.controller.RequestMapping;
import java.util.*;

public class FoodModel {
 @RequestMapping("food/foodcontent.do")
 public String food_foodcontent(HttpServletRequest req, HttpServletResponse res)
 {
	 
	  String page=req.getParameter("page");
	  String jejumap=req.getParameter("map");
	  System.out.println(jejumap);
	  if(page==null)
		  page="1";
	  
	  int curpage=Integer.parseInt(page);
	  int rowSize=9;
	  int start=(curpage*rowSize)-(rowSize-1);
	  // rownum ==> ���� 1�� 
	  int end=curpage*rowSize;
	  Map map=new HashMap();
	  map.put("map",jejumap);
	  map.put("start", start);
	  map.put("end", end);
	  
	  //  �����ͺ��̽� ���� 
	  List<CategoryVO> list=FoodDAO.foodListData(map);
	  
	  req.setAttribute("list", list);
	/*req.setAttribute("start", start);
	  req.setAttribute("end", end);*/
	  int totalpage=FoodDAO.foodTotalpage();
	  req.setAttribute("curpage", curpage);
	  req.setAttribute("totalpage", totalpage);
	  
	  
	 
	 req.setAttribute("main_jsp", "../food/foodcontent.jsp");
	 return "../main/main.jsp";
 }
 
 
 //��������
 @RequestMapping("food/fooddetailcontent.do")
 public String food_fooddetailcontent(HttpServletRequest req, HttpServletResponse res)
 {

	 String id=req.getParameter("id");
	 System.out.println(id);
	  CategoryVO dlist=FoodDAO.foodDetail(Integer.parseInt(id));
	  req.setAttribute("dvo",dlist);
	  
	  String cid=id;
	  String review_id=req.getParameter("review_id");
	  System.out.println(cid);
	  List<FoodReviewVO> reviewlist=FoodReviewDAO.FoodReviewListData(Integer.parseInt(cid));
	  req.setAttribute("reviewlist", reviewlist);    
	  req.setAttribute("id", id);
	  //req.setAttribute("cid", cid);
	  req.setAttribute("review_id", review_id);
	 req.setAttribute("main_jsp", "../food/fooddetailcontent.jsp");
	 return "../main/main.jsp";
 }
 
 //���� ����
 @RequestMapping("food/reviewinsert.do")
 public String food_reviewinsert(HttpServletRequest req,HttpServletResponse res)
 {
	 String id = req.getParameter("id");
	 req.setAttribute("id", id);
	 req.setAttribute("main_jsp", "../food/reviewinsert.jsp");
	 return "../main/main.jsp";
	 
 }
 
 
@RequestMapping("food/reviewinsert_ok.do")
 public String food_reviewinsert_ok(HttpServletRequest req,HttpServletResponse res)
 {
	 try
	  {
		  req.setCharacterEncoding("EUC-KR");
	  }catch(Exception ex){}
	 
	 // ������ �� �ޱ�
	  String cid=req.getParameter("cid");
	  String review_userid=req.getParameter("review_userid");
	  String review_content=req.getParameter("review_content");
	  String review_subject=req.getParameter("review_subject");

	  HttpSession session=req.getSession();
	  String name=(String)session.getAttribute("name");
	  String id=(String)session.getAttribute("id");

	  
	  FoodReviewVO vo=new FoodReviewVO();
	  vo.setCid(Integer.parseInt(cid));
	  vo.setReview_userid(review_userid);
	  vo.setReview_content(review_content);
	  vo.setReview_subject(review_subject);

	  // DB���� ==> mapper(SQL) ==> DAO���� ȣ��
	 FoodReviewDAO.FoodReviewInsert(vo);
	 return "redirect:../food/fooddetailcontent.do?id="+cid;
 }
 @RequestMapping("food/reviewupdate.do")
 public String board_update(HttpServletRequest req,HttpServletResponse res)
 {
	 
	  String review_id=req.getParameter("review_id");
	  FoodReviewVO vo=FoodReviewDAO.FoodReviewUpdateData(Integer.parseInt(review_id));
	  req.setAttribute("vo", vo);
	 
	  
	  // main���� include�� jsp���� ����
	  req.setAttribute("main_jsp", "../food/reviewupdate.jsp");
	  
	  // ȭ�� ��� �κ�
	  return "../main/main.jsp";
 }
 
 @RequestMapping("food/reviewupdate_ok.do")
 public String board_update_ok(HttpServletRequest req,HttpServletResponse res)
 {
	  try
	  {
		  // �ѱ�ó��
		  req.setCharacterEncoding("EUC-KR");
	  }catch(Exception ex){}
	  
	  // ������ ������ �ޱ�
	  String review_id=req.getParameter("review_id");
	 String cid=req.getParameter("cid");
	  String review_subject=req.getParameter("review_subject");
	  String review_content=req.getParameter("review_content");
	 
	  

	  // DB�� ����
	  FoodReviewVO vo = new FoodReviewVO();
	  vo.setReview_id(Integer.parseInt(review_id));
	  vo.setCid(Integer.parseInt(cid));
	  vo.setReview_subject(review_subject);
	  vo.setReview_content(review_content);
	 

	  FoodReviewDAO.FoodReviewUpdate(vo);
	  // ȭ���̵�
	  
	  return "redirect:../food/fooddetailcontent.do?id="+cid;
 }
 @RequestMapping("food/reviewdelete.do")
 public String FoodReviewDelete(HttpServletRequest req,HttpServletResponse res)
 {
	
	 String review_id=req.getParameter("review_id");
	 String cid=req.getParameter("id");
	 
	 System.out.println("������̵�"+review_id);
	 System.out.println("�Խù���ȣ"+cid);

	  FoodReviewDAO.FoodReviewDelete(Integer.parseInt(review_id));
	  return "redirect:../food/fooddetailcontent.do?id="+cid;
 }
 
}