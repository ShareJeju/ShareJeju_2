package com.sist.category.dao;
import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.member.dao.MemberVO;

public class TourDAO {
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			// config.xml ���� �б�
			Reader reader = Resources.getResourceAsReader("Config.xml");
		    // �Ľ̿�û
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	
	// ��ü ��� ��� (���������� 9���� ���)
	public static List<CategoryVO> tourListData(Map map)
	{
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		SqlSession session=null;
		try
		{ 
			session=ssf.openSession();
			list=session.selectList("tourListData",map);
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
	
	// �ش� ��ü �������� ���
	public static CategoryVO tourDetailData(int id)
	{
		CategoryVO list=new CategoryVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectOne("tourDetailData", id);
			
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
	
	// ���� ��� ���
	public static List<tourreviewVO> tourreviewListData(int cid)
	{
		List<tourreviewVO> list=new ArrayList<tourreviewVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("tourreviewListData",cid);
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
	
	/*public static void profileUpload(MemberVO vo)
	{
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			session.update("profileUpload",vo);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
	}*/
	
	// ��������
	public static int tourTotalpage()
	{
		int total=0;
		SqlSession session=ssf.openSession();
		total=session.selectOne("tourTotalpage");
		session.close();
		return total;
	}
	
	// ���侲��
	public static void tourreviewInsert(tourreviewVO vo)
	{
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			session.insert("tourreviewInsert",vo);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
	}
	
	public static int tourreviewCount(int cid)
	{
		int count=0;
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			count=session.selectOne("tourreviewCount", cid);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return count;
	}
	
	// ���� ����
	public static void tourreviewUpdate(tourreviewVO vo)
	{
		SqlSession session = null;
		try
		{
			session=ssf.openSession(true);
			session.update("tourreviewUpdate",vo);
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
	}
	
	public static tourreviewVO tourreviewUpdateData(int review_id)
	{
		tourreviewVO vo=new tourreviewVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("tourreviewUpdateData",review_id);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return vo;
	}
	
	// ���� ����
	public static void tourreviewDelete(int review_id)
	{
		SqlSession session=null;
		try
		{
			session = ssf.openSession(true);
			session.insert("tourreviewDelete",review_id);
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
