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
   
    
   public static int idcheck(String id)
   {
	   int count=0;
	   SqlSession session=null;
	   try
	   {
		   // �����ͺ��̽� ���� ��û 
		   // getConnection()
		   session=ssf.openSession();
		   count=session.selectOne("idcheck",id);
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
   
   // �α��� ó��
   public static String isLogin(String id,String pwd)
   {
	   String result="";
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   int count=session.selectOne("idCount",id);
		   if(count==0)
		   {
			   result="NOID";
		   }
		   else
		   {
			   MemberVO vo=session.selectOne("memberGetPwd", id);
			   if(pwd.equals(vo.getPwd()))
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





