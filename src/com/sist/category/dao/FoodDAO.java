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
	   // 초기화 (static변수)
	   try
	   {
		   // XML 파일 읽기 ===> Config.xml
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   
		   // 파싱요청 ==> ssf
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
	   session.close();//반환 (사용후)
	   return total;
   }
   // recipe 추가 메소드 
   public static void recipeInsert(CategoryVO vo)
   {
	  try
	  {
		  SqlSession session=ssf.openSession(true);
		   // Connection을 얻어온다
		   /*
		    *   openSession()
		    *     => SELECT (commit(X))
		    *   openSession(boolean b)
		    *      b=false => commit() (X)
		    *      b=true  => commit() (O)
		    *   ==> INSERT,UPDATE,DELETE 
		    *      openSession(true)
		    */
		   // XML의 id  ==> NOT Mapping 
		   session.insert("recipeInsert", vo);
		   session.close();// 반환 
	  }catch(Exception ex)
	  {
		  System.out.println("recipeInsert:"+ex.getMessage());
		  ex.printStackTrace();
	  }
	   
   }
   //상세보기
   public static CategoryVO foodDetail(int id)
   {
	   CategoryVO dvo=new CategoryVO();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   //openSession이 getConnection()
		   dvo=session.selectOne("foodDetail",id);
		   //vo 하나만 받을 때는 selectOne 여러개 받을 때는 selectList
		   
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







