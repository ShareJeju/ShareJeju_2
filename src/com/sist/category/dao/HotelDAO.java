package com.sist.category.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class HotelDAO {
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
	public static List<CategoryVO> hotelAllData(Map map){
		SqlSession session=ssf.openSession();
		List<CategoryVO> list=session.selectList("hotelAllData",map);
		session.close();
		return list;
		
	}
	//호텔데이터
	public static List<CategoryVO> hotelData(Map map){
		SqlSession session=ssf.openSession();
		List<CategoryVO> listHotel=session.selectList("hotelData",map);
		session.close();
		return listHotel;
		
	}
	//펜션데이터
	public static List<CategoryVO> pensionData(Map map){
		SqlSession session=ssf.openSession();
		List<CategoryVO> listPension=session.selectList("PensionData",map);
		session.close();
		return listPension;
		
	}
	//하우스데이터
	public static List<CategoryVO> houseData(Map map){
		SqlSession session=ssf.openSession();
		List<CategoryVO> listHouse=session.selectList("HouseData",map);
		session.close();
		return listHouse;
		
	}
	//기타데이터
	public static List<CategoryVO> otherData(Map map){
		SqlSession session=ssf.openSession();
		List<CategoryVO> listOther=session.selectList("OtherData",map);
		session.close();
		return listOther;
		
	}

	public static int hotelToTalpage(){
		int total=0;
		SqlSession session=ssf.openSession();
		total=session.selectOne("hotelTotalpage");
		session.close();
		return total;
	}
	//필터링 호텔 페이지
	public static int hotelPage(){
		int hoteltotal=0;
		SqlSession session=ssf.openSession();
		hoteltotal=session.selectOne("hotelPage");
		session.close();
		return hoteltotal;
	}
	public static CategoryVO hotelDetailData(int id){
		CategoryVO vo=new CategoryVO();
		try{
			SqlSession session=ssf.openSession();
			vo=session.selectOne("hotelDetailData",id);
			session.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return vo;
}
	/*public static List<Category_reviewVO> categoryReviewListData(Map map){
		List<Category_reviewVO> list=new ArrayList<Category_reviewVO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("categoryReviewListData",map);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}*/
	
	//댓글 읽어오기
	public static List<Cate_ReviewVO> reviewListData(int cid){
		List<Cate_ReviewVO> list=new ArrayList<Cate_ReviewVO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("reviewListData", cid);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	public static CategoryVO hotelReviewData(int id){
		CategoryVO vo=new CategoryVO();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			vo=session.selectOne("hotelReviewData",id);
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		
		return vo;
}
	public static void cateReviewInsert(Cate_ReviewVO vo){
		SqlSession session=null;
		try{
			session=ssf.openSession(true); //auto commit
			session.insert("cateReviewInsert",vo);
		}catch(Exception ex){
			ex.getMessage();
			ex.printStackTrace();
		}finally{
			session.close();
		}
	}
	//리뷰 삭제
	public static void reviewDelete(int review_id){
		SqlSession session=null;
		try{
			session=ssf.openSession(true);
			session.insert("reviewDelete",review_id);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			ex.printStackTrace();
		}finally{
			session.close();
		}
	}
	//리뷰 수정1
	public static Cate_ReviewVO reviewUpdateData(int review_id){
		Cate_ReviewVO vo=new Cate_ReviewVO();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			vo=session.selectOne("reviewAllData",review_id);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return vo;
	}
	//리뷰 수정
	public static void hotelReviewUpdate(Cate_ReviewVO vo){
		SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   // autoCommit()
			   session.update("hotelReviewUpdate",vo);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   
		   finally
		   {
			   session.close();
		   }
	   }
	public static List<JjimVO> jjimData(String userid){
		List<JjimVO> list=new ArrayList<JjimVO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("jjimData", userid);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	public static void jjimInsert(JjimVO vo){
		try{
			SqlSession session=ssf.openSession(true);
			session.insert("jjimInsert", vo);
			session.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public static List<CategoryVO> myPageJjimData(Map map){
		List<CategoryVO> list=new ArrayList<CategoryVO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("myPageJjimData",map);
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	
   // 여행기메인에 출력
   public static List<Cate_ReviewVO> scheduleReviewMain()
   {
	   List<Cate_ReviewVO> list=new ArrayList<Cate_ReviewVO>();
	   SqlSession session=null;
	   try{
		   session=ssf.openSession();
		   list=session.selectList("scheduleReviewMain");
		   
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   //disConnection()
		   session.close();
	   }
	   return list;
   }
   
   // 마이페이지 리뷰 출력
   public static List<Cate_ReviewVO> myfthReviewData(String userid)
   {
	   List<Cate_ReviewVO> list=
			   new ArrayList<Cate_ReviewVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("myfthReviewData",userid);
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
}
	

