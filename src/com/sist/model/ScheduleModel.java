package com.sist.model;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.controller.RequestMapping;
import com.sist.schedule.dao.ScheduleDAO;
import com.sist.schedule.dao.ScheduleVO;

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
	    HttpSession session=req.getSession();
		String userid=(String)session.getAttribute("userid");
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
		 	//userid+"_"+title+"_"+
		 	mr= new MultipartRequest(req,path,size,enctype, new DefaultFileRenamePolicy());
		}catch(Exception e){System.out.println("in_ok MultipartRequest ERROR: "+e.getMessage());}

		//데이터 받아오기 
		String title=mr.getParameter("title");//제목
		String date1=mr.getParameter("date1");//여행 시작 임시
		String date2=mr.getParameter("date2");//여행 끝 임시
		String main_img="";//메인 이미지가 들어갈 곳
		String img="";//이미들이 들어갈 변수 구분자는 .|*|. 이다
		String day=date1+"~"+date2;//여행 기간
		String text="";//글
		//String file[]; //파일이 임시로 순서대로들어갈곳 
		int f=0;
		int j=0;
		String hashtag = mr.getParameter("hashtag");// 해쉬태그 구분자는 ,
		System.out.println(hashtag);
		
		//String main_imgs=;
		System.out.println("제목 : "+title);
		System.out.println("여행기간 : "+date1+"~"+date2);
		//글 input
		String[] textList=mr.getParameterValues("text");
		for(int i=0; i<textList.length; i++)
		{
			text += ".|*|.";
			text += textList[i];			
		} 
		System.out.println("글 내용 : "+text);
		try{
		    ArrayList<String> saveFiles = new ArrayList<String>();
		    ArrayList<String> origFiles = new ArrayList<String>();
		    
			Enumeration files = mr.getFileNames();//type="file"로 넘겨받은 애들을 읽는다.
			  while(files.hasMoreElements()){
			   String name = (String)files.nextElement();
			   saveFiles.add(mr.getFilesystemName(name));
			   origFiles.add(mr.getOriginalFileName(name));
			  }		
			  System.out.println("saveFiles : "+saveFiles.size()); //나옴
			  String file[] = new String[saveFiles.size()];
			  for(int i=0; i<saveFiles.size(); i++)//여기서 에러남
			  {
			  	file[i]=saveFiles.get(i).toString();
			  	System.out.println("file["+i+"] : "+file[i]);
			  }
			for (int i = 0; i < file.length; i++) {
				if (i == 0) {
					main_img = file[i];
					System.out.println("메인 이미지 : " + main_img);
				} else {
					img += ","+file[i]; //userid+"_"+
					System.out.println(i + "째날 이미지는" + img);
				}
			}	
		} catch (Exception e) {
			System.out.println("리뷰작성 ERROR : " + e.getMessage());
			e.printStackTrace();
		}
	
		ScheduleVO vo=new ScheduleVO();
		vo.setMain_img(userid+"_"+main_img);
		vo.setImg(img);
		vo.setTitle(title);
		vo.setDay(day);
		vo.setText(text);
		vo.setHashtag(hashtag);
		vo.setUserid(userid);
		ScheduleDAO.scheduleInsert(vo);
		
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
