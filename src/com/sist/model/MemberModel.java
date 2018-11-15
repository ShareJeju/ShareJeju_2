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
	 /* List<String> nList=NaverDaumManager.naverFindData();
	  req.setAttribute("nList", nList);
	  
	  List<String> dList=NaverDaumManager.daumFindData();
	  req.setAttribute("dList", dList);*/
	  
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
	  // DB연동 
	  String id=req.getParameter("id");
	  int count=MemberDAO.idcheck(id);
	  
	  req.setAttribute("count", count);
	  return "../member/idcheck_ok.jsp";
  }
  
  // 회원가입
  @RequestMapping("member/join_ok.do")
  public String member_join_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
		  // 한글 변환 
		  req.setCharacterEncoding("EUC-KR");
		  String id=req.getParameter("id");
		  String pwd=req.getParameter("pwd");
		  String name=req.getParameter("name");
		  String sex=req.getParameter("sex");
		  String birthday=req.getParameter("birthday");
		  String post1=req.getParameter("post1");
		  String post2=req.getParameter("post2");
		  String addr1=req.getParameter("addr1");
		  String addr2=req.getParameter("addr2");
		  String tel1=req.getParameter("tel1");
		  String tel2=req.getParameter("tel2");
		  String tel3=req.getParameter("tel3");
		  String content=req.getParameter("content");
		  
		  MemberVO vo=new MemberVO();
		  vo.setId(id);
		  vo.setPwd(pwd);
		  vo.setName(name);
		  vo.setSex(sex);
		  vo.setBirthday(birthday);
		  vo.setPost(post1+"-"+post2);
		  vo.setAddr1(addr1);
		  vo.setAddr2(addr2);
		  vo.setTel(tel1+"-"+tel2+"-"+tel3);
		  vo.setContent(content);
		  
		  MemberDAO.joinInsert(vo);
	  }catch(Exception ex){}
	  return "redirect:../main/main.do";
  }
  @RequestMapping("member/login.do")
  public String member_login(HttpServletRequest req,HttpServletResponse res)
  {
	  String id=req.getParameter("id");
	  String pwd=req.getParameter("pwd");
	  //DB연동 
	  String result=MemberDAO.isLogin(id, pwd);
	  if(!(result.equals("NOID")&& result.equals("NOPWD")))
	  {
		  //로그인이 된 상태
		  HttpSession session=req.getSession();
		  
		  //session을 가지고 온다
		  session.setAttribute("id", id);
		  session.setAttribute("name", result);
		  
		  //setssion에 저장
	  }
	  req.setAttribute("res", result);
	  return "../member/login.jsp";
  }
  
  @RequestMapping("member/logout.do")
  public String member_logout(HttpServletRequest req,HttpServletResponse res)
  {
	  HttpSession session=req.getSession();
	  session.invalidate();
	  
	  //전체 세션에 저장된 데이터삭제
	  return "redirect:../main/main.do";
  }
}













