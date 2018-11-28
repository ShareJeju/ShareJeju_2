<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 날짜포맷 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

.sub_contents{
margin:0 auto;
width:75%;
}
#detail_photo
{
margin-top:100px;
background-color:red;
width:50%;
height:400px;
float:left;
}
#detail_info
{
margin-top:100px;
display:inline-block;
width:50%;
height:400px;
padding:20px;
background-color:#54d9cd;
}
#detail_bar
{
padding-top:20px;
}
#detail_bar ul
{
display:block;
width:100%;
height:100px;
}
#detail_review
{
clear:both;
}
#detailname
{
font-weight: bold;
}
#info
{
font-weight: bold;
}
#detail_bar ul li
{
width:14%;
list-style:none;
float:left;
font-size:15px;
font-weight:bold;
}
#detail_review table td

{
padding:7px;
}
#detail_review table tr #likes

{
color:#54d9cd;
}
#detail_review .reviewtable
{
border=0;
width:90%;
margin:0 auto;
text-align:center;
}
.btn_color:hover
{
color: #54d9cd; 
border-color:#54d9cd;
background-color:#fff;
}

.btn_color
{
color: #fff; 
background-color:#54d9cd;
border-color:#54d9cd;
}
.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
</style>
</head>
<body>

<div id=detail_bar>
<ul class="text-center">
<li><img src="../images/icon/like.png" width=30% ><br><br>좋아요</li>
<li><img src="../images/icon/heart.png" width=30% ><br><br>찜</li>
<li><img src="../images/icon/review.png" width=30% ><br><br>리뷰 쓰기</li>
<li><img src="../images/icon/write.png" width=30% ><br><br>일정 등록</li>
<li><img src="../images/icon/map.png" width=30% ><br><br>방문했어요</li>
<li><img src="../images/icon/view.png" width=30% ><br><br>조회</li>
<li><img src="../images/icon/share.png" width=30% ><br><br>SNS 공유</li>
</ul>

</div>
<div id=detail_review>

<table style="margin-left:70px" width=90%;>
	<tr>
	  <td style="margin-left:70px" width=95%>
		 <h2 style="font-weight:bold;color:#54d9cd;">여행가의 리뷰(숫자)</h2>
	  </td>
	  <td width=5%>
		<%-- <c:if test="${sessionScope.review_userid!=null }"> <!-- 로그인이 됐을 때 --> --%>
		  <a href="../tour/tourreview_insert.do?id=${id}" class="btn btn-md btn_color">리뷰 쓰기</a>
		<%-- </c:if> --%>
	  </td>
	</tr>
    <tr>
      <td colspan="2"><h4>최신 | 추천 | 평가</h4></td>
    </tr>
</table>


<table class="reviewtable">
<c:forEach var="vo" items="${ list }">
	<tr>
	  <td width="15%" style="float:left;"><img src="../images/profile1.jpg" width=100px style="border-radius:50%;" ></td>
		<td width=75% rowspan="3" style="text-align:left;">
		 <h3 style="font-weight:bold;color:#54d9cd;"> <!-- 제목 영역 --> ${vo.review_subject }</h3>
		 <!-- 리뷰영역 --> ${vo.review_content }
		 <br><!-- 사진 영역 -->
		</td>
	  <td id="likes" width=25% rowspan="4"><img src="../images/icon/likeicon.png" width=20px> 1 </td>
	</tr>
    <tr>
      <td><!-- 아이디 영역 --> ${vo.review_userid }</td>
    </tr>
    <tr>
      <td ><!-- 날짜영역 --> ${vo.review_regdate }</td>
    </tr>
    <tr>
      <td colspan="5" class="text-right">
       <button type="button" class="btn btn-xs btn_color"
       data-toggle="modal" data-target="#deleteconfirm">삭제</button>
       <a href="../tour/tourreview_update.do?id=${id}&review_id=${vo.review_id}" class="btn btn-xs btn_color">수정</a>
      </td>
    </tr>
    <tr>
      <td colspan="3">
      <hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid #54d9cd">
      </td>
    </tr>
</c:forEach>
</table>

<div class="modal fade" id="deleteconfirm" role="dialog">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
   </div>
   <div class="modal-body">
    <p>정말 삭제하시겠습니까 ?</p>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">예</button>
    <button type="button" class="btn btn-default" data-dismiss="modal">아니요</button>
   </div>
  </div>
 </div>
</div>

</div> 

</div>
</body>
</html>