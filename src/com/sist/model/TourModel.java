package com.sist.model;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.HotelDAO;
import com.sist.category.dao.JjimVO;
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
      
      if(jejumap==null)
      {
    	  jejumap="제주시";
      }
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
      req.setAttribute("start", start);
      req.setAttribute("end", end);
       req.setAttribute("main_jsp", "../tour/tourcontent.jsp");
       return "../main/main.jsp";
   }
   
   // 상세페이지 출력 + 리뷰 목록 출력
   @RequestMapping("tour/tourdetailcontent.do") 
   public String tour_tourdetailcontent(HttpServletRequest req, HttpServletResponse res)
   { 
	  // tour/tourdetailcontent.do?id=${vo.id}
	  String id=req.getParameter("id");
	  
      // DB연동
      CategoryVO vo=TourDAO.tourDetailData(Integer.parseInt(id));
      req.setAttribute("vo1", vo);
      req.setAttribute("vo2", vo);
      
      String cid=id;   
      List<tourreviewVO> list = TourDAO.tourreviewListData(Integer.parseInt(cid));
      if(vo.getText().length()>200)
      {
    	  String str=vo.getText();
    	  vo.setText(str.substring(0,200)+".....");
      }
      
      HttpSession session=req.getSession();
	  String userid=(String)session.getAttribute("userid");
	  
	  if(userid!=null)
	  {
		  List<JjimVO> jList=TourDAO.tourjjimData(userid);
		  
		  for(JjimVO jvo:jList){
			  if(Integer.parseInt(id)==jvo.getRno())
			  {
				  vo.setBjjim(true);
			  }
		  }
	  }

      req.setAttribute("list", list);
      req.setAttribute("count", list.size());
      req.setAttribute("id", id);
      //req.setAttribute("review_id", arg1);
      
       req.setAttribute("main_jsp", "../tour/tourdetailcontent.jsp");
       //req.setAttribute("tourreview_jsp", "../tour/tourreview.jsp");
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
    public String tour_tourreview_insert_ok(HttpServletRequest req,HttpServletResponse res)throws ServletException
    {
    	HttpSession session=req.getSession();
        String userid=(String)session.getAttribute("userid"); 
        
        MultipartRequest mr=null;
        
        try
        {
        	req.setCharacterEncoding("EUC-KR");
        	
        	// 업로드한 프로필 사진 데이터 받기
        	ServletContext context=req.getServletContext();
            String path=context.getRealPath("/")+"tourReviewImg";
            int size=1000*1024*1024; //파일 크기
            String enctype="EUC-KR"; //파일이 한글명일때
 
            mr=new MultipartRequest(
            		req,
            		path,
            		size,
            		enctype,
            		new DefaultFileRenamePolicy());
            
        }catch(Exception ex)
        {
        	ex.printStackTrace();
        }
        
        String review_img=mr.getOriginalFileName("upload");
        
        String cid=mr.getParameter("cid");
        String review_content=mr.getParameter("review_content");
        String review_subject=mr.getParameter("review_subject");    
        String profile_img=mr.getParameter("profile_img");
        
        tourreviewVO vo = new tourreviewVO();
        vo.setCid(Integer.parseInt(cid));
        vo.setReview_userid(userid);
        vo.setReview_content(review_content);
        vo.setReview_subject(review_subject);
        vo.setReview_img(review_img);
        
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
        
       HttpSession session=req.getSession();
       String userid=(String)session.getAttribute("userid");
    	
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
       vo.setReview_userid(userid);
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
       System.out.println("review_id="+review_id);
       String cid=req.getParameter("cid");
       
       TourDAO.tourreviewDelete(Integer.parseInt(review_id));
       
       return "redirect:../tour/tourdetailcontent.do?id="+cid;
    }
    
	@RequestMapping("tour/jjim.do")
	public String tour_jjim(HttpServletRequest req,HttpServletResponse res){
		String id=req.getParameter("id");
		HttpSession session=req.getSession();
		String userid=(String)session.getAttribute("userid");
		JjimVO vo=new JjimVO();
		vo.setUserid(userid);
		vo.setRno(Integer.parseInt(id));
		TourDAO.tourjjimInsert(vo);
		return "../tour/tourdetailcontent.do";
		
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