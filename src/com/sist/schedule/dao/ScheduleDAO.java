package com.sist.schedule.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.category.dao.CategoryVO;
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
	   //메인에 상위 여행기리뷰 4개  뿌리기
	   public static List<ScheduleVO> scheduleMainList()
	   {
		   SqlSession session=null;
		   List<ScheduleVO> list=new ArrayList<ScheduleVO>();
		   try
		   {
			   session=ssf.openSession();//autocommit
			   list=session.selectList("scheduleMainList");
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
	   
	   //메인에 업체리뷰 상위 4개 뿌리기
	   public static List<CategoryVO> categoryMainList()
	   {
		   SqlSession session=null;
		   List<CategoryVO> list=new ArrayList<CategoryVO>();
		   try
		   {
			   session=ssf.openSession();//autocommit
			   list=session.selectList("categoryMainList");
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
	 
	// 리뷰디테일
	public static ScheduleVO scheduleDetail(int id)
	{
		ScheduleVO vo = new ScheduleVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("scheduleDetail",id);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return vo; 
	}
	//게시글 수정
	
	   
	//게기슬 삭제
	
	// 리뷰댓글출력
	public static List<CommentVO> scheduleReplyList(int sid)
	{
		List<CommentVO> list=new ArrayList<>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("scheduleReplyList",sid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return list;
	}
	
	// 리뷰댓글작성
   public static void scheduleReplyNew(CommentVO vo)
   {
	   SqlSession session=null;
	   try {	   
		   session=ssf.openSession(true);
		   session.insert("scheduleReplyNew",vo);
	   } catch (Exception e) {
		   e.printStackTrace();
	   } 
	   finally
	   {
		   session.close();
	   }
   }
	// 리뷰댓글수정
   public static void scheduleReplyUpdate(CommentVO vo)
   {
	   SqlSession session=null;
	   try
	   {
		   //연결 
		   session=ssf.openSession(true);//autoCommit
		   session.update("scheduleReplyUpdate",vo);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
   }
	// 리뷰댓글삭제
   public static void scheduleReplyDelete(int id)
   {
	   SqlSession session=null;
	   try
	   {
		   //연결 
		   session=ssf.openSession(true);//autoCommit
		   session.insert("scheduleReplyDelete",id);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
   }
}
