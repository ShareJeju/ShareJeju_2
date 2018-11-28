package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
      //��ü ����Ʈ �� �ڸ�
      
      req.setAttribute("list", list); // ������
      //��ü req���ڸ�
      
    req.setAttribute("main_jsp", "home.jsp");
    return "main.jsp";
 }
}