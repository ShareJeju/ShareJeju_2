package com.sist.member.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
   
   // 정보수정 보여주는페이지
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
		   ex.printStackTrace();
	   }
	   finally
	   {
		   session.close();
	   }
	   return result;
   }
}





