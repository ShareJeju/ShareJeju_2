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
			//XML 파일 읽기
			//DAO마다 다 있음 => 나중에 클래스화시켜서 클래스 부름
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
	   //리뷰 목록 출력
	   public static List<FoodReviewVO> FoodReviewListData(int cid)
	   {
		   List<FoodReviewVO> reviewlist=new ArrayList<FoodReviewVO>();
		   SqlSession session=null;
		   try{
			   session=ssf.openSession();
			   reviewlist=session.selectList("FoodReviewListData",cid);
			   //selectList 앞에 문자 board-mapper에서 id: 중복되면 안된다
			   
			   
			  /*  * WHERE num BETWEEN #{start} AND #{end} 가 없었으면 id만 적어주면 된다
			    * #이 들어있으면 매개변수 O
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
	   //목록 출력
	   public static int FoodReviewTotalPage()
	   {
		   SqlSession session=null;
		   int total=0;
		   try{
			   session=ssf.openSession();
			   total=session.selectOne("FoodReviewTotalPage");
			   //#이 없어서 id만 넘김
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
	   // 리뷰 쓰기
	   
	   public static void FoodReviewInsert(FoodReviewVO vo)
	   {
		   SqlSession session=null;
		   try{
			   //연결
			   session=ssf.openSession(true); //insert는 true 무조건! commit
			   session.insert("FoodReviewInsert",vo);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }finally
		   {
			   session.close();//반환
		   }
	   }
	   
	   public static FoodReviewVO FoodReviewUpdateData(int review_id)
	   {
		   FoodReviewVO vo=new FoodReviewVO();
		   SqlSession session=null;
		   try
		   {
			   //연결
			   session=ssf.openSession();
			   
			   vo=session.selectOne("FoodReviewOneData", review_id);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   // 반환 
				   session.close();
		   }
			   return vo;
		}
	   
	   // 수정
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
	   //리뷰 삭제
	   public static void FoodReviewDelete(int review_id)
	   {
		   SqlSession session=null;
		   try
		   {
			   //연결 
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
