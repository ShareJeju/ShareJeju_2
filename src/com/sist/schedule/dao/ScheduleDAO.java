package com.sist.schedule.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.member.dao.MemberVO;

public class ScheduleDAO {
	private static SqlSessionFactory ssf;
	   static
	   {
		   try
		   {
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   ssf=new SqlSessionFactoryBuilder().build(reader);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
	
	//게시글 추가
	   public static void scheduleInsert(ScheduleVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();//autocommit
			   session.insert("scheduleInsert",vo);
			   session.commit();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   session.close();// 반환
		   }
	   }
	   
	//게시글 리스트 MAX ID가져오기
	   public static int scheduleReviewMaxId()
	   {
		   SqlSession session=null;
		   int maxId=0;
		   try
		   {
			   session=ssf.openSession();//autocommit
			   maxId=session.selectOne("recipeTotalpage");
			   session.commit();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   session.close();// 반환
		   }
		   return maxId;
	   }
	   
	 //리스트 뿌리기
	 public static List<ScheduleVO> scheduleList()
	 {
		 SqlSession session=null;
		 List<ScheduleVO> list=new ArrayList<ScheduleVO>();
		   try
		   {
			   session=ssf.openSession();//autocommit
			   list=session.selectList("scheduleList");
			   session.commit();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   session.close();// 반환
		   }
		   return list;
	 }
	 
	//게시글 수정
	
	   
	//게기슬 삭제
}
