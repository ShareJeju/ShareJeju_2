package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.category.dao.CategoryVO;
import com.sist.controller.RequestMapping;
import com.sist.schedule.dao.ScheduleDAO;
import com.sist.schedule.dao.ScheduleVO;

import java.util.*;

public class MainModel {
 @RequestMapping("main/main.do")
 public String main_main(HttpServletRequest req, HttpServletResponse res)
 {
    try {
         req.setCharacterEncoding("UTF-8");
      } catch (Exception e) {}
            
      List<ScheduleVO> list=ScheduleDAO.scheduleMainList();
      //업체 리스트 들어갈 자리
      List<CategoryVO> list1=ScheduleDAO.categoryMainList();
      
      req.setAttribute("list", list); // 목록출력
      req.setAttribute("list1", list1);
      //업체 req들어갈자리
      
    req.setAttribute("main_jsp", "home.jsp");
    return "main.jsp";
 }
}