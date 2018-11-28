package com.sist.category.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.category.*;

public class FoodReviewDAO {
	
	private static SqlSessionFactory ssf;
	   static
			//XML ���� �б�
			//DAO���� �� ���� => ���߿� Ŭ����ȭ���Ѽ� Ŭ���� �θ�
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
	   //���� ��� ���
	   public static List<FoodReviewVO> FoodReviewListData(int cid)
	   {
		   List<FoodReviewVO> reviewlist=new ArrayList<FoodReviewVO>();
		   SqlSession session=null;
		   try{
			   session=ssf.openSession();
			   reviewlist=session.selectList("FoodReviewListData",cid);
			   //selectList �տ� ���� board-mapper���� id: �ߺ��Ǹ� �ȵȴ�
			   
			   
			  /*  * WHERE num BETWEEN #{start} AND #{end} �� �������� id�� �����ָ� �ȴ�
			    * #�� ��������� �Ű����� O
			    */
			   
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   //disConnection()
			   session.close();
		   }
		   return reviewlist;
	   }
	   //��� ���
	   public static int FoodReviewTotalPage()
	   {
		   SqlSession session=null;
		   int total=0;
		   try{
			   session=ssf.openSession();
			   total=session.selectOne("FoodReviewTotalPage");
			   //#�� ��� id�� �ѱ�
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   //disConnection()
			   session.close();
		   }
		   return total;
	   }
	   // ���� ����
	   
	   public static void FoodReviewInsert(FoodReviewVO vo)
	   {
		   SqlSession session=null;
		   try{
			   //����
			   session=ssf.openSession(true); //insert�� true ������! commit
			   session.insert("FoodReviewInsert",vo);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }finally
		   {
			   session.close();//��ȯ
		   }
	   }
	   
	   public static FoodReviewVO FoodReviewUpdateData(int review_id)
	   {
		   FoodReviewVO vo=new FoodReviewVO();
		   SqlSession session=null;
		   try
		   {
			   //����
			   session=ssf.openSession();
			   
			   vo=session.selectOne("FoodReviewOneData", review_id);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   // ��ȯ 
				   session.close();
		   }
			   return vo;
		}
	   
	   // ����
	   public static void FoodReviewUpdate(FoodReviewVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   // autoCommit()
			   session.update("FoodReviewUpdate",vo);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   session.close();
		   }
	   }
	   //���� ����
	   public static void FoodReviewDelete(int review_id)
	   {
		   SqlSession session=null;
		   try
		   {
			   //���� 
			   session=ssf.openSession(true);//autoCommit
			   session.insert("FoodReviewDelete",review_id);
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
