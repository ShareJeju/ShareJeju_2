package com.sist.model;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.category.dao.Cate_ReviewVO;
import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.HotelDAO;
import com.sist.controller.RequestMapping;
public class CategoryReviewModel {
	@RequestMapping("hotel/hotel_review_board.do")
	public String hotle_review_board(HttpServletRequest req, HttpServletResponse res){
		String id=req.getParameter("no");
		CategoryVO vo=HotelDAO.hotelReviewData(Integer.parseInt(id));
		req.setAttribute("vo", vo);
		req.setAttribute("main_jsp", "../hotel/hotel_review_board.jsp");
		return "../hotel/hotel_review_board.jsp";
	}
	@RequestMapping("hotel/review_new.do")
	public String hotel_review_board_ok(HttpServletRequest req, HttpServletResponse res){
		//session에 저장된  userid,profile_img
		HttpSession session=req.getSession();
		String userid=(String)session.getAttribute("userid");
		//
		MultipartRequest mr=null;
		try{
			req.setCharacterEncoding("EUC-KR");
			
			 // 업로드한 프로필사진 데이터 받기		 
			 ServletContext context = req.getServletContext();
			 String path = context.getRealPath("/")+"hotelReivewImg"; // 사용자에게 전송받은 파일을 브라우저에서 보여주기위해서 필요
		 	 int max = 100*128*128;
			 String enctype="EUC-KR";
			 // 업로드
			 mr = new MultipartRequest(
					req,
					path,
					max,
					enctype,
					new DefaultFileRenamePolicy());
		}catch(Exception ex){
			ex.printStackTrace();
			}
		String cid=mr.getParameter("cid");
		String review_content=mr.getParameter("content");
		String review_subject=mr.getParameter("subject");
		String review_img=mr.getOriginalFileName("review_img");
		
		
		
		
		//String profile_img=(String)session.getAttribute("profile_img");
		
		
		Cate_ReviewVO vo=new Cate_ReviewVO();
		vo.setCid(Integer.parseInt(cid));
		vo.setReview_content(review_content);
		vo.setReview_subject(review_subject);		
		vo.setReview_userid(userid);
		vo.setReview_img(review_img);
		
		vo.setReview_img_size("null");
		HotelDAO.cateReviewInsert(vo);
		//String review_id=req.getParameter("no");
		//Cate_ReviewVO vo2=HotelDAO.hotelReviewData(Integer.parseInt(review_id));
		req.setAttribute("vo", vo);
		return "redirect:../hotel/hotelDetailContent.do?no="+cid;
	}
	
	@RequestMapping("hotel/review_delete.do")
	public String hotel_review_delete(HttpServletRequest req, HttpServletResponse res){
		String id=req.getParameter("no");
		String cid=req.getParameter("cid");
		HotelDAO.reviewDelete(Integer.parseInt(id));
		return "redirect:../hotel/hotelDetailContent.do?no="+cid;
	}
	//리뷰수정 폼에 내용 받아오기
	@RequestMapping("hotel/hotel_review_update.do")
	//?no=1&cid=10
	public String hotle_review_update(HttpServletRequest req, HttpServletResponse res){
		String id=req.getParameter("no");
		String cid=req.getParameter("cid");
		Cate_ReviewVO vo=HotelDAO.reviewUpdateData(Integer.parseInt(id));
		
		req.setAttribute("vo", vo);
		req.setAttribute("cid", cid);
		req.setAttribute("no", id);
		
		req.setAttribute("main_jsp", "../hotel/hotel_review_update.jsp");
		return "../hotel/hotel_review_update.jsp";
		
		
	}
	//리뷰수정 
	@RequestMapping("hotel/hotel_review_update_ok.do")
	public String hotel_update_ok(HttpServletRequest req, HttpServletResponse res){
		try{
			//한글처리
			req.setCharacterEncoding("EUC-KR");
		}catch(Exception ex){
			
		}
		String review_content=req.getParameter("content");
		String review_subject=req.getParameter("subject");
		
		
		
		
		String id=req.getParameter("cid");
		String no=req.getParameter("no");
		Cate_ReviewVO vo=new Cate_ReviewVO();
		vo.setReview_content(review_content);
		vo.setReview_subject(review_subject);		
		vo.setReview_id(Integer.parseInt(no));		
		HotelDAO.hotelReviewUpdate(vo);
		//req.setAttribute("rvo", vo);
		return "redirect:../hotel/hotelDetailContent.do?no="+id;
		
	}
}
