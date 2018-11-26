package com.sist.controller;


import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * 	DispatcherServlet
 * ====================
 *   web.xml (XML로 등록된 패키지)를 HandlerMapping으로 전송하면 핸들러매핑은 XML을 파싱해준다.
 *   => 파싱된 XML코드를 FileChange로 전송하고 파일체인지는 class이름을 만든다.
 *   
 * 
 */
import java.util.*;
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<String> list =new ArrayList<String>();

	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("contextConfigLocation"); //web.xml의 init-param 키값을 읽어오는것
		/*<init-param><!-- init-param은 DispatcherServlet가 읽어준다. (메인 시작점)  -->
		<param-name>contextConfigLocation</param-name> <!-- 키  -->
		<param-value>C:\webDev\MVCincludeProject\WebContent\WEB-INF\application.xml</param-value> <!-- 값  -->
		</init-param>  
		//map형식 : key, value ==> 값얻기: key를 보낸다.
		
		XML,HTML(jsoup) ==> 파싱(XML,HTML)에서 필요한 정보만 추출하는것)
		ORACLE ==> JDBC(오라클에 있는 데이터만 추출하는것)
		 
		*/
		
		HandlerMapping hm=new HandlerMapping(path);
		FileChange fc=new FileChange();
		list=fc.componentScan(hm.list);
		
		for(String s:list)
		{
			System.out.println("s="+s);
		}
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String cmd=request.getRequestURI();
			cmd=cmd.substring(request.getContextPath().length()+1);
			for(String strCls:list)
			{
				Class cls=Class.forName(strCls);
				Object obj=cls.newInstance();
				Method[] methods=cls.getDeclaredMethods();
				for(java.lang.reflect.Method m:methods)
				{
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd))
					{
						String jsp=(String)m.invoke(obj, request,response);
						if(jsp.startsWith("redirect"))
						{
							String str=jsp.substring(jsp.indexOf(":")+1);
							response.sendRedirect(str);
						}
						else
						{
						RequestDispatcher rd=request.getRequestDispatcher(jsp);
						rd.forward(request, response);
						}
						return;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			String cmd=request.getRequestURI();
		
			cmd=cmd.substring(request.getContextPath().length()+1);
			for(String strCls:list)
			{
				Class cls=Class.forName(strCls);
				Object obj=cls.newInstance();
				Method[] methods=cls.getDeclaredMethods();
				for(Method m:methods)
				{
					RequestMapping rm=
							m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd))
					{
						String jsp=(String)m.invoke(obj, request,response);
						RequestDispatcher rd=request.getRequestDispatcher(jsp);
						rd.forward(request, response);
						return;
					}
				}
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}

}



	 */

}
