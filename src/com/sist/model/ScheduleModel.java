package com.sist.model;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.controller.RequestMapping;

import java.util.*;
public class ScheduleModel {

	@RequestMapping("schedule/schedule_list.do")
	public String schedule_list(HttpServletRequest req,HttpServletResponse res)
	{
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception e) {}
		req.setAttribute("main_jsp", "../schedule/schedule_list.jsp");
		return "../main/main.jsp";
	}
	
	
	@RequestMapping("schedule/schedule_insert.do")
	public String schedule_insert(HttpServletRequest req,HttpServletResponse res)
	{
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}
		
		req.setAttribute("main_jsp", "../schedule/schedule_insert.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("schedule/schedule_insert_ok.do")
	public String schedule_insert_ok(HttpServletRequest req,HttpServletResponse res)
	{
		MultipartRequest mr = null;
		try{
			req.setCharacterEncoding("EUC-KR");
			
			 // 업로드한 프로필사진 데이터 받기       
		    ServletContext context = req.getServletContext();
		    String path = context.getRealPath("/")+"schedule_upload"; // 사용자에게 전송받은 파일을 브라우저에서 보여주기위해서 필요
		 	System.out.println(path);
		 	int size=1000*1024*1024; //100mb 파일 최대크기
		 	String enctype="EUC-KR"; //한글 파일명
		 	
		 	//new DefaultFileRenamePolicy() 중복 파일명일때 파일명 변경해서 저장해주는것. => a.jpg >>>>a1.jpg 	
		 	mr= new MultipartRequest(req,path,size,enctype, new DefaultFileRenamePolicy());
		}catch(Exception e){System.out.println("in_ok MultipartRequest ERROR: "+e.getMessage());}
		System.out.println("모델입니다");
		//데이터 받아오기 
		String title=mr.getParameter("title");
		String date1=mr.getParameter("date1");
		String date2=mr.getParameter("date2");
		//String main_imgs=;
		System.out.println(title);
		System.out.println(date1+"~"+date2);
		 ArrayList<String> saveFiles = new ArrayList<String>();
		 ArrayList<String> origFiles = new ArrayList<String>();


		//System.out.println(main_img);
		
		try{
			Enumeration files = mr.getFileNames();
			  while(files.hasMoreElements()){
			   String name = (String)files.nextElement();
			   saveFiles.add(mr.getFilesystemName(name));
			   origFiles.add(mr.getOriginalFileName(name));
			  }

			
           for(String s:saveFiles)
           {
        	   
        	   System.out.println(s);
           }
			
		/*try {			
			String[] text=mr.getParameterValues("text");
			String textList="";
			for(int i=0; i<text.length; i++)
			{
				textList += text[i];
				textList += ".|*|.";
			}
			String[] img=mr.getParameterValues("img");
			String imgList="";
			for(int i=0; i<img.length; i++)
			{
				imgList += img[i];
				imgList += ".|*|."; 
			}

			System.out.println(textList);
			//System.out.println(imgList);
*/			
		} catch (Exception e) {
			System.out.println("리뷰작성 ERROR : "+e.getMessage());
			e.printStackTrace();
		}
		String hashtag=mr.getParameter("hashtag");
		System.out.println(hashtag);
		
		return "redirect:../schedule/schedule_list.do";
	}
	
	// 상세페이지
	@RequestMapping("schedule/schedule_detail.do")
	public String schedule_detail(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("main_jsp", "../schedule/schedule_detail.jsp");
		return "../main/main.jsp";
	}
}
