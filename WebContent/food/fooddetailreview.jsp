<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 날짜포맷 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- 리뷰 -->
<div id=detail_review>
<!-- <div style="margin-left:70px">
<h2 style="font-weight:bold;color:#54d9cd;">여행가의 리뷰(숫자)</h2>
<h4>최신 | 추천 | 평가</h4>
</div> -->
<table style="margin-left:70px" width=90%;>
<tr>
<td style="margin-left:70px" width=87%>
<h2 style="font-weight:bold;color:#54d9cd;">여행가의 리뷰</h2>
</td>
<td width=5%>
	 <c:if test="${sessionScope.userid!=null }"> <!-- 로그인이 됐을 때 --> 
	
	<a href="../food/reviewinsert.do?id=${id }" class="btn btn-md btn_color">리뷰 쓰기</a> 
	</c:if> 
</td>
<td width=8%>
<a href="#">찜 <img src="../images/icon/like (2).png" width=30px></a> 
</td>
</tr>
<!-- <tr>
<td colspan="2"><h4>최신 | 추천 | 평가</h4></td>
</tr> -->
</table>
<c:forEach var="vo" items="${reviewlist }">  
 <table class="reviewtable">

<tr>

<td width="15%"><img src="../member/${vo.profile_img }" width=100px style="border-radius:50%;" ></td>
<td width=75% rowspan="3" style="text-align:left; ">
<h3 style="font-weight:bold;color:#54d9cd;"> <!-- 제목 영역 --> ${vo.review_subject }</h3>
<!-- 리뷰영역 --> ${vo.review_content }
<br><!-- 사진 영역 -->
  <c:if test="${vo.review_img ne null }">
<img src="../FoodReivewImg/${vo.review_img }" width=500px >
</c:if>
  <c:if test="${vo.review_img eq null }">
&nbsp;
</c:if>

</td>
<td id="likes" width=25% rowspan="3"><!-- <img src="../images/icon/likeicon.png" width=20px> 1 -->

<br><br>
<c:if test="${vo.review_userid==sessionScope.userid }">
<a href="../food/reviewupdate.do?review_id=${vo.review_id }" class="btn btn-md btn_color">수정</a> 
<a href="../food/reviewdelete.do?review_id=${vo.review_id }&id=${vo.cid}" class="btn btn-md btn_color">삭제</a>
</c:if>
 </td>

</tr>
<%-- <tr><td><!-- 리뷰 번호 --> ${vo.review_id } </td></tr> --%>
<tr><td><!-- 아이디 영역 -->  ${vo.review_userid } </td></tr>
<tr><td ><!-- 날짜영역 -->  <fmt:formatDate value="${vo.review_regdate }" 
            pattern="yyyy-MM-dd"/></td></tr>
<tr>
<!-- <td colspan="3" style="text-align:left; ">

</td> -->
</tr>
</table>
<hr size="2" width="90%" style="padding:0; margin:5px;border:1px solid #54d9cd">
</c:forEach> 

</div> 
<!-- 리뷰 -->
</body>
</html>