package com.sist.model;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.category.dao.Cate_ReviewVO;
import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.FoodDAO;
import com.sist.category.dao.FoodReviewVO;
import com.sist.category.dao.HotelDAO;
import com.sist.category.dao.JjimVO;
import com.sist.category.dao.TourDAO;
import com.sist.category.dao.tourreviewVO;
import com.sist.controller.RequestMapping;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;
import com.sist.member.dao.NoticeVO;
import com.sist.schedule.dao.ScheduleDAO;
import com.sist.schedule.dao.ScheduleVO;
import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;
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
 
 // ����������
 @RequestMapping("member/mypage.do")
 public String member_mypage(HttpServletRequest req,HttpServletResponse res)
 {	 
	 HttpSession session=req.getSession();
	 String userid=(String)session.getAttribute("userid");
	 MemberVO vo = MemberDAO.joinDetail(userid);
	 //�� ���
	 List<JjimVO> jList=HotelDAO.jjimData(userid);
	 List<Integer> list=new ArrayList<Integer>();
	 for(JjimVO vo2:jList){
		 list.add(vo2.getRno());
	 }
	 Map map=new HashMap();
	 map.put("rno_list", list);
	 List<CategoryVO> reList=HotelDAO.myPageJjimData(map);
	 req.setAttribute("list", reList);
	 // ����⸮�� ���
	 List<ScheduleVO> sclist = ScheduleDAO.myScReviewData(userid);
	 req.setAttribute("sclist", sclist);
	 req.setAttribute("sc_count", sclist.size());
	 // ���������� ���
	 List<Cate_ReviewVO> fthlist = HotelDAO.myfthReviewData(userid);
	 req.setAttribute("fthlist", fthlist);
	 req.setAttribute("fth_count", fthlist.size());	 
	 
	 req.setAttribute("vo", vo);
	 req.setAttribute("main_jsp", "../member/mypage.jsp");
	 return "../main/main.jsp";
 }
 
 // �����ʻ������ε�
 @RequestMapping("member/profile_upload_ok.do")
 public String member_profile_upload_ok(HttpServletRequest req,HttpServletResponse res)throws ServletException
 {	
	 try{
		 // ���ε��� �����ʻ��� ������ �ޱ�		 
		 ServletContext context = req.getServletContext();
		 String path = context.getRealPath("/")+"member"; // ����ڿ��� ���۹��� ������ ���������� �����ֱ����ؼ� �ʿ�
	 	 int max = 100*128*128;
		 String enctype="EUC-KR";
		 // ���ε�
		 MultipartRequest mr = new MultipartRequest(
				req,
				path,
				max,
				enctype,
				new DefaultFileRenamePolicy());
		 String profile=mr.getFilesystemName("profile");
		 //res.sendRedirect("list.jsp?name="+name);
		 System.out.println(profile);
		
		 HttpSession session=req.getSession();
		 String userid=(String)session.getAttribute("userid");

		 MemberVO vo = new MemberVO();
		 vo.setUserid(userid);
		 vo.setProfile_img(profile);
		 
		 MemberDAO.profileUpload(vo);

	 }
	 catch(Exception ex){
		 ex.printStackTrace();
	 }

	 return "redirect:../member/mypage.do";
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
 
  // ȸ������ �����ݿ��Ͽ� ���
  @RequestMapping("member/modify_ok.do")
  public String member_modify_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
		  req.setCharacterEncoding("EUC-KR");
	  }catch(Exception ex){}
	  
	  HttpSession session=req.getSession();
      String userid=(String)session.getAttribute("userid");
      String spw = (String)session.getAttribute("pw");

	  // ������ ������ �ޱ�
      String pw = req.getParameter("pw");
      String newpw = req.getParameter("newpw");
      String newpw2 = req.getParameter("newpw2");
      
      String name = req.getParameter("name");
      String email = req.getParameter("email");
      String phone = req.getParameter("phone");
      String sex = req.getParameter("sex");
      String birth = req.getParameter("birth");
      String region = req.getParameter("region");
      String intro = req.getParameter("intro");
	  
      MemberVO vo = new MemberVO();
      if(newpw.equals(""))
      {
    	  vo.setPw(spw);
      }else
      {
    	  vo.setPw(newpw);
      }
      vo.setName(name);
      vo.setEmail(email);
      vo.setPhone(phone);
      vo.setSex(sex);
      vo.setBirth(birth);
      vo.setRegion(region);
      vo.setIntro(intro);
      vo.setUserid(userid);
      MemberDAO.joinUpdate(vo);
      return "redirect:../member/modify.do";
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
		  session.setAttribute("pw", pw);
		  //session�� ����
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
  
/*  // ��,���ƿ�
  @RequestMapping("member/wishlike.do")
  public String member_wishlike(HttpServletRequest req,HttpServletResponse res)
  {
	  HttpSession session=req.getSession();
      String userid=(String)session.getAttribute("userid");
	  MemberVO vo = MemberDAO.joinDetail(userid);
	  req.setAttribute("profile", vo.getProfile_img());
	  req.setAttribute("main_jsp", "../member/wishlike.jsp");
	  return "../main/main.jsp";
  }*/
  
  
  // ��������
  // �������� ��� ���
  @RequestMapping("member/notice_list.do")
  public String member_notice_list(HttpServletRequest req,HttpServletResponse res)
  {	 
	  HttpSession session=req.getSession();
	  String userid=(String)session.getAttribute("userid");
	  MemberVO vo = MemberDAO.joinDetail(userid); // �����ڿ��� 
	  req.setAttribute("mvo", vo);
	  String page = req.getParameter("page");
	  if(page==null)
		  page="1";
	  int curpage=Integer.parseInt(page);
	  
	  int rowSize=10;
	  int start=(curpage*rowSize) - (rowSize-1);
	  int end=curpage*rowSize;
	  Map map = new HashMap();
	  map.put("start", start);
	  map.put("end", end);
	  List<NoticeVO> list = MemberDAO.noticeListData(map);
	  req.setAttribute("list", list);
	  int totalpage = MemberDAO.noticeTotalPage();
	  req.setAttribute("totalpage", totalpage);
	  req.setAttribute("curpage", curpage);
	  req.setAttribute("main_jsp", "../member/notice_list.jsp");
	  return "../main/main.jsp";
  }
  
  // �������� �Խñ� ���
  @RequestMapping("member/notice_detail.do")
  public String member_notice_detail(HttpServletRequest req,HttpServletResponse res)
  {
	  
	  HttpSession session=req.getSession();
	  String userid=(String)session.getAttribute("userid");
	  MemberVO mvo = MemberDAO.joinDetail(userid); // �����ڿ��� 
	  req.setAttribute("mvo", mvo);
	  String id = req.getParameter("id");
	  NoticeVO vo = MemberDAO.noticeDetailData(Integer.parseInt(id));
	  req.setAttribute("vo", vo);
	  req.setAttribute("main_jsp", "../member/notice_detail.jsp");
	  return "../main/main.jsp";
  }
  
  // �������� �˻�
  @RequestMapping("member/notice_search.do")
  public String member_notice_search(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
		  req.setCharacterEncoding("EUC-KR");
		  
		  String cate = req.getParameter("cate");
		  String data = req.getParameter("data");
		  Map map = new HashMap();
		  map.put("cate", cate);
		  map.put("data", data);
		  
		  //System.out.println(map.get("cate"));
		  //System.out.println(map.get("data"));
		  List<NoticeVO> list = MemberDAO.noticeSearch(map);
		  int count = list.size();

		  req.setAttribute("count", count);
		  req.setAttribute("list", list);
		  

	  }catch(Exception ex){
		  ex.printStackTrace();
	  }
	 
	  req.setAttribute("main_jsp", "../member/notice_find.jsp");
	  return "../main/main.jsp";
  }
  // �������� �ۼ�
  @RequestMapping("member/notice_insert.do")
  public String member_notice_insert(HttpServletRequest req,HttpServletResponse res)
  {
	  try {
		  req.setCharacterEncoding("EUC-KR");
	  } catch (Exception e) {}
	  // ���ޱ�
	  req.setAttribute("main_jsp", "../member/notice_insert.jsp");
	  
	  return "../main/main.jsp";
  }
  
  // �������� �ۼ��� ����
  @RequestMapping("member/notice_insert_ok.do")
  public String member_notice_insert_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
		  req.setCharacterEncoding("EUC-KR");
	  }catch(Exception ex){}
	  // ������ ���ޱ�
	  String title = req.getParameter("title");
	  String news = req.getParameter("news");
	  String contents = req.getParameter("contents");
	  String files = req.getParameter("files");
	  System.out.println("title="+title);
	  System.out.println("news="+news);
	  
	  NoticeVO vo = new NoticeVO();
	  vo.setTitle(title);
	  vo.setNews(Integer.parseInt(news));
	  vo.setContents(contents);
	  vo.setFiles(files);

	  // ������ ����
	  MemberDAO.noticeInsert(vo);
	  
	  return "redirect:notice_list.do";
  }
  
  // �������� ����
  @RequestMapping("member/notice_update.do")
  public String member_notice_update(HttpServletRequest req,HttpServletResponse res)
  {
	  String id = req.getParameter("id");
	  NoticeVO vo = MemberDAO.noticeUpdateData(Integer.parseInt(id));
	  req.setAttribute("vo", vo);	  
	  req.setAttribute("main_jsp", "../member/notice_update.jsp");
	  return "../main/main.jsp";
  }
  
  // �������� �������� �ݿ�
  @RequestMapping("member/notice_update_ok.do")
  public String member_notice_update_ok(HttpServletRequest req,HttpServletResponse res)
  {
	  try
	  {
		  req.setCharacterEncoding("EUC-KR");
	  }catch(Exception ex){}
	  
	  // ������ ������ �ޱ�
	  String title = req.getParameter("title");
	  String news = req.getParameter("news");
	  String contents = req.getParameter("contents");
	  String files = req.getParameter("files");
	  String id = req.getParameter("id");
	  
	  NoticeVO vo = new NoticeVO();
	  vo.setTitle(title);
	  vo.setNews(Integer.parseInt(news));
	  vo.setContents(contents);
	  vo.setFiles(files);
	  vo.setId(Integer.parseInt(id));
	  
	  MemberDAO.noticeUpdate(vo);
	  return "redirect:../member/notice_detail.do?id="+id;
  }
  
  // �������� ����
  @RequestMapping("member/notice_delete.do")
  public String member_notice_delete(HttpServletRequest req,HttpServletResponse res)
  {
	  String id = req.getParameter("id");
	  
	  // DB���� ==> SQL ==> DAO
	  MemberDAO.noticeDelete(Integer.parseInt(id));
	  return "redirect:../member/notice_list.do";
  }
  

}













