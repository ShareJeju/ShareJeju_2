package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.category.dao.CategoryVO;
import com.sist.category.dao.SearchDAO;
import com.sist.controller.RequestMapping;
import com.sist.schedule.dao.ScheduleDAO;
import com.sist.schedule.dao.ScheduleVO;

import java.util.*;

public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest req, HttpServletResponse res) {
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}

		List<ScheduleVO> list = ScheduleDAO.scheduleMainList();
		// ��ü ����Ʈ �� �ڸ�
		List<CategoryVO> list1 = ScheduleDAO.categoryMainList();

		req.setAttribute("list", list); // ������
		req.setAttribute("list1", list1);
		// ��ü req���ڸ�

		req.setAttribute("main_jsp", "home.jsp");
		return "main.jsp";
	}

	@RequestMapping("main/main_search.do")
	public String main_search(HttpServletRequest req, HttpServletResponse res) {
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception e) {}
		
		String name=req.getParameter("name");
		System.out.println(name);
		
		List<CategoryVO> list =SearchDAO.mainSearch(name); 
		List<ScheduleVO> Tlist=SearchDAO.mainTSearch(name);
		int count=0;
		for(int i=0; i<list.size(); i++)
		{
			count++;
		}
		
		req.setAttribute("name", name);
		req.setAttribute("list", list);
		req.setAttribute("Tlist", Tlist);
		req.setAttribute("count", count);
		req.setAttribute("main_jsp", "main_search.jsp");
		return "main.jsp";
	}

}