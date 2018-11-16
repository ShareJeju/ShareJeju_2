package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;


import java.util.*;
public class MemberModel {
  
	  
  @RequestMapping("member/join.do")
  public String member_join(HttpServletRequest req,HttpServletResponse res)
  {	  
	  req.setAttribute("main_jsp","../member/join.jsp");
	  return "../main/main.jsp";
  }
    
  @RequestMapping("member/idcheck.do")
  public String member_idcheck(HttpServletRequest req,HttpServletResponse res)
  {
	  return "../member/idcheck.jsp";
  }
 
  @RequestMapping("member/idcheck_ok.do")
  public String member_idcheck_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  // DB���� 
	  String userid=req.getParameter("userid");
	  int count=MemberDAO.idcheck(userid);
	  
	  req.setAttribute("count", count);
	  return "../member/idcheck_ok.jsp";
  }
	  
  // ȸ������
  @RequestMapping("member/join_ok.do")
  public String member_join_ok(HttpServletRequest req,HttpServletResponse res)
  {
		 try {
			 req.setCharacterEncoding("EUC-KR");
			 // �� ��������
			 String userid = req.getParameter("userid");
			 String pw = req.getParameter("pw");
			 String name = req.getParameter("name");
			 String email = req.getParameter("email");
			 String phone = req.getParameter("phone");
			 String sex = req.getParameter("sex");
			 String birth = req.getParameter("birth");
			 String region = req.getParameter("region");
			 
			 MemberVO vo = new MemberVO();
			 vo.setUserid(userid);
			 vo.setPw(pw);
			 vo.setName(name);
			 vo.setEmail(email);
			 vo.setPhone(phone);
			 vo.setSex(sex);
			 vo.setBirth(birth);
			 vo.setRegion(region);
			 MemberDAO.joinInsert(vo);
			 
		 }catch (Exception e) {}
		  return "redirect:../main/main.do";
  }
  
	//�� ��������
	 @RequestMapping("member/modify.do")
	 public String member_modify(HttpServletRequest req,HttpServletResponse res)
	 {
		 
		 HttpSession session=req.getSession();
		 String userid=(String)session.getAttribute("userid");
		 MemberVO vo = MemberDAO.joinDetail(userid);
		 System.out.println(vo.getUserid());
		 
		 req.setAttribute("vo", vo);
		 req.setAttribute("main_jsp","../member/modify.jsp");
		 return "../main/main.jsp";
	 }

  @RequestMapping("member/login.do")
  public String member_login(HttpServletRequest req,HttpServletResponse res)
  {
	  String userid=req.getParameter("userid");
	  String pw=req.getParameter("pw");
	  //DB���� 
	  String result=MemberDAO.isLogin(userid, pw);
	  if(!(result.equals("NOID")&& result.equals("NOPWD")))
	  {
		  //�α����� �� ����
		  HttpSession session=req.getSession();
		  
		  //session�� ������ �´�
		  session.setAttribute("userid", userid);
		  session.setAttribute("name", result);
		  
		  //setssion�� ����
	  }
	  req.setAttribute("res", result);
	  return "../member/login.jsp";
  }
  
  @RequestMapping("member/logout.do")
  public String member_logout(HttpServletRequest req,HttpServletResponse res)
  {
	  HttpSession session=req.getSession();
	  session.invalidate();
	  
	  //��ü ���ǿ� ����� �����ͻ���
	  return "redirect:../main/main.do";
  }
}













