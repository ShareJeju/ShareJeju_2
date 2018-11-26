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
 *   web.xml (XML�� ��ϵ� ��Ű��)�� HandlerMapping���� �����ϸ� �ڵ鷯������ XML�� �Ľ����ش�.
 *   => �Ľ̵� XML�ڵ带 FileChange�� �����ϰ� ����ü������ class�̸��� �����.
 *   
 * 
 */
import java.util.*;
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<String> list =new ArrayList<String>();

	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("contextConfigLocation"); //web.xml�� init-param Ű���� �о���°�
		/*<init-param><!-- init-param�� DispatcherServlet�� �о��ش�. (���� ������)  -->
		<param-name>contextConfigLocation</param-name> <!-- Ű  -->
		<param-value>C:\webDev\MVCincludeProject\WebContent\WEB-INF\application.xml</param-value> <!-- ��  -->
		</init-param>  
		//map���� : key, value ==> �����: key�� ������.
		
		XML,HTML(jsoup) ==> �Ľ�(XML,HTML)���� �ʿ��� ������ �����ϴ°�)
		ORACLE ==> JDBC(����Ŭ�� �ִ� �����͸� �����ϴ°�)
		 
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
