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
				
		List<ScheduleVO> list=ScheduleDAO.scheduleList();
		
		req.setAttribute("list", list); // ������
		
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
			
			 // ���ε��� �����ʻ��� ������ �ޱ�       
		    ServletContext context = req.getServletContext();
		    String path = context.getRealPath("/")+"schedule_upload"; // ����ڿ��� ���۹��� ������ ���������� �����ֱ����ؼ� �ʿ�
		    
		 	System.out.println(path);
		 	int size=1000*1024*1024; //100mb ���� �ִ�ũ��
		 	String enctype="EUC-KR"; //�ѱ� ���ϸ�
		 	
		 	//new DefaultFileRenamePolicy() �ߺ� ���ϸ��϶� ���ϸ� �����ؼ� �������ִ°�. => a.jpg >>>>a1.jpg 	
		 	//userid+"_"+title+"_"+
		 	mr= new MultipartRequest(req,path,size,enctype, new DefaultFileRenamePolicy());
		}catch(Exception e){System.out.println("in_ok MultipartRequest ERROR: "+e.getMessage());}

		//������ �޾ƿ��� 
		String title=mr.getParameter("title");//����
		String date1=mr.getParameter("date1");//���� ���� �ӽ�
		String date2=mr.getParameter("date2");//���� �� �ӽ�
		String main_img="";//���� �̹����� �� ��
		String img="";//�̵̹��� �� ���� �����ڴ� .|*|. �̴�
		String day=date1+"~"+date2;//���� �Ⱓ
		String text="";//��
		//String file[]; //������ �ӽ÷� ������ε��� 
		int f=0;
		int j=0;
		String hashtag = "#"+mr.getParameter("hashtag");// �ؽ��±� �����ڴ� ,
		hashtag=hashtag.replaceAll(",", ",#");// ,�� ,#���� �ٲ��ش�.
		System.out.println(hashtag);
		
		//String main_imgs=;
		System.out.println("���� : "+title);
		System.out.println("����Ⱓ : "+date1+"~"+date2);
		//�� input
		String[] textList=mr.getParameterValues("text");
		for(int i=0; i<textList.length; i++)
		{
			text += ".|*|.";
			text += textList[i];			
		} 
		System.out.println("�� ���� : "+text);
		try{
		    ArrayList<String> saveFiles = new ArrayList<String>();
		    ArrayList<String> origFiles = new ArrayList<String>();
		    
			Enumeration files = mr.getFileNames();//type="file"�� �Ѱܹ��� �ֵ��� �д´�.
			  while(files.hasMoreElements()){
			   String name = (String)files.nextElement();
			   saveFiles.add(mr.getFilesystemName(name));
			   origFiles.add(mr.getOriginalFileName(name));
			  }		
			  System.out.println("saveFiles : "+saveFiles.size()); //����
			  String file[] = new String[saveFiles.size()];
			  for(int i=0; i<saveFiles.size(); i++)//���⼭ ������
			  {
			  	file[i]=saveFiles.get(i).toString();
			  	System.out.println("file["+i+"] : "+file[i]);
			  }
			for (int i = 0; i < file.length; i++) {
				if (i == 0) {
					main_img = file[i];
					System.out.println("���� �̹��� : " + main_img);
				} else if(i==file.length-1) {
					img += file[i]; //userid+"_"+
					System.out.println("������ �̹�����" + img);
				} else{
					img += file[i]+","; //userid+"_"+
					System.out.println(i + "°�� �̹�����" + img);
				}
				
			}	
		} catch (Exception e) {
			System.out.println("�����ۼ� ERROR : " + e.getMessage());
			e.printStackTrace();
		}
	
		ScheduleVO vo=new ScheduleVO();
		vo.setMain_img(main_img);
		vo.setImg(img);
		vo.setTitle(title);
		vo.setDay(day);
		vo.setText(text);
		vo.setHashtag(hashtag);
		vo.setUserid(userid);
		ScheduleDAO.scheduleInsert(vo);
		
		return "redirect:../schedule/schedule_list.do";
	}
	
	// ��������
	@RequestMapping("schedule/schedule_detail.do")
	public String schedule_detail(HttpServletRequest req,HttpServletResponse res)
	{
		req.setAttribute("main_jsp", "../schedule/schedule_detail.jsp");
		return "../main/main.jsp";
	}
}
