package com.sist.model;

import javax.servlet.ServletContext;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.TourDAO;
import com.sist.category.dao.tourreviewVO;
import com.sist.controller.RequestMapping;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;

import java.util.*;

public class TourModel {
   
   // 목록 출력
   @RequestMapping("tour/tourcontent.do") 
   public String tour_tourcontent(HttpServletRequest req, HttpServletResponse res)
   {
      String page=req.getParameter("page");
      String jejumap=req.getParameter("map");
      if(page==null)
         page="1";
      
      int curpage=Integer.parseInt(page);
      int rowSize=9;
      int start=(curpage*rowSize)-(rowSize-1);
      int end=curpage*rowSize;
      Map map=new HashMap();
      map.put("map", jejumap);
      map.put("start", start);
      map.put("end", end);
      
      List<CategoryVO> list=TourDAO.tourListData(map);
      req.setAttribute("list", list);
      
      int totalpage=TourDAO.tourTotalpage(); 
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      /*req.setAttribute("start", start);
      req.setAttribute("end", end);*/
       req.setAttribute("main_jsp", "../tour/tourcontent.jsp");
       return "../main/main.jsp";
   }
   
   // 상세페이지 출력 + 리뷰 목록 출력
   @RequestMapping("tour/tourdetailcontent.do") 
   public String tour_tourdetailcontent(HttpServletRequest req, HttpServletResponse res)
   {   
      // tour/tourdetailcontent.do?id=${vo.id}
      String id=req.getParameter("id");
      System.out.println("id="+id);
      
      
      // DB연동
      CategoryVO vo=TourDAO.tourDetailData(Integer.parseInt(id));
      req.setAttribute("vo1", vo);
      
      String cid=id;
      List<tourreviewVO> list = TourDAO.tourreviewListData(Integer.parseInt(cid));
      req.setAttribute("list", list);
      req.setAttribute("count", list.size());
      req.setAttribute("id", id);
      
       req.setAttribute("main_jsp", "../tour/tourdetailcontent.jsp");
      // req.setAttribute("tourreview_jsp", "../tour/tourreview.jsp");
       return "../main/main.jsp";
   }
   
   // 리뷰 쓰기
    @RequestMapping("tour/tourreview_insert.do")
   public String tour_tourreview_insert(HttpServletRequest req,HttpServletResponse res)
   {
       String id=req.getParameter("id");
       
       req.setAttribute("id", id);
       req.setAttribute("main_jsp", "../tour/tourreview_insert.jsp");
       
       return "../main/main.jsp";
       
   }
    
    @RequestMapping("tour/tourreview_insert_ok.do")
    public String tour_tourreview_insert_ok(HttpServletRequest req,HttpServletResponse res)
    {
       try
      {
         req.setCharacterEncoding("EUC-KR");
      }catch(Exception ex){}
       
   
       String cid=req.getParameter("cid");
       String review_userid=req.getParameter("review_userid");
       String review_content=req.getParameter("review_content");
       String review_subject=req.getParameter("review_subject");     
       
       tourreviewVO vo = new tourreviewVO();
       vo.setCid(Integer.parseInt(cid));
       vo.setReview_userid(review_userid);
       vo.setReview_content(review_content);
       vo.setReview_subject(review_subject);
       // 데이터베이스 연결
       TourDAO.tourreviewInsert(vo);
       return "redirect:../tour/tourdetailcontent.do?id="+cid;
    }
    
     // 리뷰 수정
    @RequestMapping("tour/tourreview_update.do")
    public String tour_tourreview_update(HttpServletRequest req,HttpServletResponse res)
    {
       String review_id=req.getParameter("review_id");
       
       tourreviewVO vo = TourDAO.tourreviewUpdateData(Integer.parseInt(review_id));
       req.setAttribute("vo", vo);
       
       req.setAttribute("main_jsp", "../tour/tourreview_update.jsp");
       
       return "../main/main.jsp";
    }
    
    @RequestMapping("tour/tourreview_update_ok.do")
    public String tour_tourreview_update_ok(HttpServletRequest req,HttpServletResponse res)
    {
       try
       {
          req.setCharacterEncoding("EUC-KR");
       }catch(Exception ex){}
       
       // 전송한 데이터 받기
       String review_id=req.getParameter("review_id");
       String cid=req.getParameter("cid");
       String review_subject=req.getParameter("review_subject");
       String review_content=req.getParameter("review_content");
       
       // DB연결
       tourreviewVO vo=new tourreviewVO();
       vo.setReview_id(Integer.parseInt(review_id));
       vo.setCid(Integer.parseInt(cid));
       vo.setReview_subject(review_subject);
       vo.setReview_content(review_content);
       
       TourDAO.tourreviewUpdate(vo);
       return "redirect:../tour/tourdetailcontent.do?id="+cid;
       
    }
    
    
    // 리뷰 삭제
    @RequestMapping("tour/tourreview_delete.do")
    public String tour_tourreview_delete(HttpServletRequest req,HttpServletResponse res)
    {
       String review_id=req.getParameter("review_id");
       String cid=req.getParameter("id");
       
       TourDAO.tourreviewDelete(Integer.parseInt(review_id));
       
       return "redirect:../tour/tourdetailcontent.do?id="+cid;
    }
    
    
    
    /*@RequestMapping("member/profile_upload_ok.do")
    public String member_profile_upload_ok(HttpServletRequest req,HttpServletResponse res)throws ServletException
    {
       try
       {
          ServletContext context=req.getServletContext();
          String path=context.getRealPath("/")+"member";
          int max=100*128*128;
          String enctype="EUC-KR";
          MultipartRequest mr = new MultipartRequest(
                  req,
                  path,
                  max,
                  enctype,
                  new DefaultFileRenamePolicy());
          String profile=mr.getFilesystemName("profile");
          System.out.println(profile);
          
          HttpSession session=req.getSession();
          String userid=(String)session.getAttribute("userid");
          if(profile!=null)
          {
             session.setAttribute("profile", profile);
          }
          
          MemberVO vo = new MemberVO();
          vo.setUserid(userid);
          vo.setProfile_img(profile);
          
          MemberDAO.profileUpload(vo);
       }catch(Exception ex)
       {
          ex.printStackTrace();
       }
       return "redirect:../member/mypage.do";
    }*/
}