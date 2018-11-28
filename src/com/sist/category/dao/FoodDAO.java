package com.sist.category.dao;
import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.category.dao.*;
public class FoodDAO {
   private static SqlSessionFactory ssf;
   static
   {
	   // �ʱ�ȭ (static����)
	   try
	   {
		   // XML ���� �б� ===> Config.xml
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   
		   // �Ľ̿�û ==> ssf
		   ssf=new SqlSessionFactoryBuilder().build(reader);
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
   }
   public static List<CategoryVO> foodListData(Map map)
   {
	   List<CategoryVO> list=
			   new ArrayList<CategoryVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("foodListData",map);
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
   public static int foodTotalpage()
   {
	   int total=0;
	   SqlSession session=ssf.openSession();
	   total=session.selectOne("foodTotalpage");
	   session.close();//��ȯ (�����)
	   return total;
   }
   // recipe �߰� �޼ҵ� 
   public static void recipeInsert(CategoryVO vo)
   {
	  try
	  {
		  SqlSession session=ssf.openSession(true);
		   // Connection�� ���´�
		   /*
		    *   openSession()
		    *     => SELECT (commit(X))
		    *   openSession(boolean b)
		    *      b=false => commit() (X)
		    *      b=true  => commit() (O)
		    *   ==> INSERT,UPDATE,DELETE 
		    *      openSession(true)
		    */
		   // XML�� id  ==> NOT Mapping 
		   session.insert("recipeInsert", vo);
		   session.close();// ��ȯ 
	  }catch(Exception ex)
	  {
		  System.out.println("recipeInsert:"+ex.getMessage());
		  ex.printStackTrace();
	  }
	   
   }
   //�󼼺���
   public static CategoryVO foodDetail(int id)
   {
	   CategoryVO dvo=new CategoryVO();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   //openSession�� getConnection()
		   dvo=session.selectOne("foodDetail",id);
		   //vo �ϳ��� ���� ���� selectOne ������ ���� ���� selectList
		   
	   }catch(Exception ex)
	   {
		   System.out.println("foodDetail:"+ex.getMessage());
		   ex.printStackTrace();
	   }
	   finally{
		   session.close();
		   //disConnection()
	   }
	   return dvo;
   }
}







