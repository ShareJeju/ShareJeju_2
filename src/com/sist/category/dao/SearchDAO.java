package com.sist.category.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class SearchDAO {
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			ex.printStackTrace();
		}
	}
	
	public static List<CategoryVO> mainSearch(String name)
	{
		SqlSession session=null;
		   List<CategoryVO> list=new ArrayList<CategoryVO>();
		   try
		   {
			   session=ssf.openSession();//autocommit
			   list=session.selectList("mainSearch", name);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   session.close();// ¹ÝÈ¯
		   }
		   return list;
	}
}
