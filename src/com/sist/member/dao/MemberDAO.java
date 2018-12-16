package com.sist.member.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.category.dao.CategoryVO;

import java.io.*;
public class MemberDAO {
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
   
    
   // ID중복체크  
   public static int idcheck(String userid)
   {
	   int count=0;
	   SqlSession session=null;
	   try
	   {
		   // 데이터베이스 수행 요청 
		   // getConnection()
		   session=ssf.openSession();
		   count=session.selectOne("idcheck",userid);
	   }catch(Exception ex)
	   {
		   // 에러 처리
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   //Connection반환
		   session.close();
	   }
	   return count;
   }
   
   // 회원 가입
   public static void joinInsert(MemberVO vo)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();//autocommit
		   session.insert("joinInsert",vo);
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
   
   // 프로필사진 업로드
   public static void profileUpload(MemberVO vo)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.update("profileUpload",vo);
		   
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }finally
	   {
		   session.close();
	   }
   }
   
   
   // 가입정보 보여주는페이지(modify 초기화면)
   public static MemberVO joinDetail(String userid)
   {
	   MemberVO vo = new MemberVO();
	   try {
		   SqlSession session = ssf.openSession();
		   vo=session.selectOne("joinDetail",userid);
		   session.close();
		   
	   } catch (Exception e) {
		System.out.println("joinModify:"+e.getMessage());
		e.printStackTrace();
	   }
	   return vo;
   }
   
   // 회원정보 수정
   public static void joinUpdate(MemberVO vo)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.update("joinUpdate",vo);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }finally
	   {
		   session.close();
	   }
   }
   
   // 로그인 처리
   public static String isLogin(String userid,String pw)
   {
	   String result="";
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   int count=session.selectOne("idCount",userid);
		   if(count==0)
		   {
			   result="NOID";
		   }
		   else
		   {
			   MemberVO vo=session.selectOne("memberGetPwd", userid);
			   if(pw.equals(vo.getPw()))
			   {
				   result=vo.getName();
			   }
			   else
			   {
				   result="NOPWD";
			   }
		   }
	   }catch(Exception ex)
	   {
		   System.out.println("isLogin:"+ex.getMessage());
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
	   return result;
   }
   
   // 공지사항
   // 목록출력
   public static List<NoticeVO> noticeListData(Map map)
   {
	   List<NoticeVO> list= new ArrayList<>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list = session.selectList("noticeListData", map);
	
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
	   return list;
   }
   // 총페이지
   public static int noticeTotalPage()
   {
	   SqlSession session = null;
	   int total = 0;
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("noticeTotalPage");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
	   return total;
   }
   // 공지사항 내용보기
   public static NoticeVO noticeDetailData(int id)
   {
	   NoticeVO vo = new NoticeVO();
	   SqlSession session=null;
	   try {
		   session=ssf.openSession();
		   session.update("hitIncrement",id);
		   session.commit();
		   vo=session.selectOne("noticeDetailData",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    finally
	    {
	    	session.close();
	    }
	   return  vo;
   }
   
   // 검색
	public static List<NoticeVO> noticeSearch(Map map)
	{
	   List<NoticeVO> list=new ArrayList<NoticeVO>();
	   SqlSession session=null;

		   try
		   {
			   session=ssf.openSession(true);//autocommit
			   list=session.selectList("noticeSearch", map);
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
   
   // 공지사항 작성
   public static void noticeInsert(NoticeVO vo)
   {
	   SqlSession session=null;
	   try {
		    session = ssf.openSession(true);
		    session.insert("noticeInsert", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally
		{
			session.close();
		}
   }
   // 공지사항 수정하기
   public static NoticeVO noticeUpdateData(int id)
   {
	   NoticeVO vo = new NoticeVO();
	   SqlSession session=null;
	   try {
		   session=ssf.openSession();
		   vo=session.selectOne("noticeDetailData",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    finally
	    {
	    	session.close();
	    }
	   return  vo;
   }
   // 공지사항 수정사항 반영하여 출력
   public static void noticeUpdate(NoticeVO vo)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.update("noticeUpdate",vo);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }finally
	   {
		   session.close();
	   }
   }
   
   // 삭제
   public static void noticeDelete(int id)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.delete("noticeDelete",id);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }finally
	   {
		   session.close();
	   }
   }
}




