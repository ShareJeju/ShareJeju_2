package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import com.sist.category.dao.Cate_ReviewVO;
import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.HotelDAO;
import com.sist.controller.RequestMapping;


public class HotelModel {
	@RequestMapping("hotel/hotelContent.do")
	public String hotel_hotelContent(HttpServletRequest req, HttpServletResponse res){
		
		
		String page=req.getParameter("page");
		if(page==null){
			page="1";
		}
		int curpage=Integer.parseInt(page);
		
		int rowSize=9;
		int start=(curpage*rowSize)-(rowSize-1);
		
		int end=curpage*rowSize;
		//Map으로 전송하기 때문에 Map에 담기
		Map map=new HashMap();
		map.put("start", start);
		map.put("end",end);
		List<CategoryVO> list=HotelDAO.hotelAllData(map);
		List<CategoryVO> listHotel=HotelDAO.hotelData(map);
		List<CategoryVO> listPension=HotelDAO.pensionData(map);
		List<CategoryVO> listHouse=HotelDAO.houseData(map);
		List<CategoryVO> listOther=HotelDAO.otherData(map);
		
		for(CategoryVO vo:list){
			if(vo.getName().length()>15){
				String str=vo.getName();
				vo.setName(str.substring(0,15)+"...");
			}
		}
		req.setAttribute("list", list);
		req.setAttribute("listHotel", listHotel);
		req.setAttribute("listPension", listPension);
		req.setAttribute("listHouse", listHouse);
		req.setAttribute("listOther", listOther);
		
		int totalpage=HotelDAO.hotelToTalpage();		
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		
		req.setAttribute("main_jsp", "../hotel/hotelContent.jsp");
		
		return "../main/main.jsp";
	}
	
	
	@RequestMapping("hotel/hotelDetailContent.do")
	public String hotel_hotelDetailContent(HttpServletRequest req, HttpServletResponse res){
		String page=req.getParameter("page");
		if(page==null){
			page="1";
		}
		int curpage=Integer.parseInt(page);
		
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		//Map으로 전송하기 때문에 Map에 담기
		Map map=new HashMap();
		map.put("start", start);
		map.put("end",end);
		
		
		
		String id=req.getParameter("no");
		CategoryVO vo=HotelDAO.hotelDetailData(Integer.parseInt(id));
		List<Cate_ReviewVO> list=HotelDAO.reviewListData(Integer.parseInt(id));
		if(vo.getText().length()>250){
			String str=vo.getText();
			vo.setText(str.substring(0,250)+"...");
		}
		req.setAttribute("list", list);
		//int totalpage=HotelDAO.hotelReviewToTalpage();
		req.setAttribute("vo", vo);
		req.setAttribute("curpage", curpage);
		//req.setAttribute("totalpage", totalpage);
		req.setAttribute("main_jsp", "../hotel/hotelDetailContent.jsp");
		return "../main/main.jsp";
	}
	
}
