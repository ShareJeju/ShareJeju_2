package com.sist.category.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.schedule.dao.ScheduleVO;
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
			   session.close();// 반환
		   }
		   return list;
	}
	
	public static List<ScheduleVO> mainTSearch(String title)
	{
		SqlSession session=null;
		   List<ScheduleVO> list=new ArrayList<ScheduleVO>();
		   try
		   {
			   session=ssf.openSession();//autocommit
			   list=session.selectList("mainTSearch", title);
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
}
