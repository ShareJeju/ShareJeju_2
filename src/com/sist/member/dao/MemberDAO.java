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
   
    
   // ID�ߺ�üũ  
   public static int idcheck(String userid)
   {
	   int count=0;
	   SqlSession session=null;
	   try
	   {
		   // �����ͺ��̽� ���� ��û 
		   // getConnection()
		   session=ssf.openSession();
		   count=session.selectOne("idcheck",userid);
	   }catch(Exception ex)
	   {
		   // ���� ó��
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   //Connection��ȯ
		   session.close();
	   }
	   return count;
   }
   
   // ȸ�� ����
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
		   session.close();// ��ȯ
	   }
   }
   
   // �������� �����ִ�������
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
   
   // �α��� ó��
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





