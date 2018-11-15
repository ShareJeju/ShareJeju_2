package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import java.util.*;

public class MainModel {
 @RequestMapping("main/main.do")
 public String main_main(HttpServletRequest req, HttpServletResponse res)
 {
	 req.setAttribute("main_jsp", "home.jsp");
	 return "main.jsp";
 }
}
