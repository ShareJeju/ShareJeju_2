<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
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
</style>
</head>
<body>
<div class="sub_contents">
<div id=detail_photo><img src="images/detail_photo.jpg" width=100% height=400px ></div>
<div id=detail_info >
<h3 id=detailname>명소 이름</h3>
<br>
<h4>간단설명</h4>
<br>
<h4 id=info>기본정보</h4>

주소<br>
비용<br>
시간<br>
연락처<br>
웹사이트<br>
맛집<br>
휴무
</div>
<!-- reservation -->
		<div id="reservation" >
			<div class="container">
				<!-- footer.jsp -->
				<jsp:include page="reservation.jsp"></jsp:include>
			</div>
		</div>

<div id=detail_bar>
<ul class="text-center">
<li><img src="images/icon/like.png" width=30% ><br><br>좋아요</li>
<li><img src="images/icon/heart.png" width=30% ><br><br>찜</li>
<li><img src="images/icon/review.png" width=30% ><br><br>리뷰 쓰기</li>
<li><img src="images/icon/write.png" width=30% ><br><br>일정 등록</li>
<li><img src="images/icon/map.png" width=30% ><br><br>방문했어요</li>
<li><img src="images/icon/view.png" width=30% ><br><br>조회</li>
<li><img src="images/icon/share.png" width=30% ><br><br>SNS 공유</li>
</ul>

</div>
<div id=detail_review>
<div style="margin-left:70px">
<h2 style="font-weight:bold;color:#54d9cd;">여행가의 리뷰(숫자)</h2>
<h4>최신 | 추천 | 평가</h4>
</div>
<table class="reviewtable">
<tr>
<td width="15%"><img src="images/profile1.jpg" width=100px style="border-radius:50%;" ></td>
<td width=75% rowspan="4" style="text-align:left;">
카페 봄날에서 바다 보면서 음료수 먹었어요! 사람이 많았는데 그만큼 너무 예뻣어요! 드라마 촬영지라서 그런지 보는내내 세트장에 있는 느낌이였어요! 사진찍기도 좋고 바다도 이렇게가까이 있어서 기분이 너무 좋았아요 
<br>사진 영역
</td>
<td id="likes" width=25% rowspan="4"><img src="images/icon/likeicon.png" width=20px> 1 </td>
</tr>
<tr><td>Son********** </td></tr>
<tr><td><img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
</td></tr>
<tr><td >2017.12.08</td></tr>

</table>
<hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid #54d9cd">
<table class="reviewtable">
<tr>
<td width="15%"><img src="images/profile2.jpg" width=100px style="border-radius:50%;" ></td>
<td width=75% rowspan="4" style="text-align:left;">
카페 봄날에서 바다 보면서 음료수 먹었어요! 사람이 많았는데 그만큼 너무 예뻣어요! 드라마 촬영지라서 그런지 보는내내 세트장에 있는 느낌이였어요! 사진찍기도 좋고 바다도 이렇게가까이 있어서 기분이 너무 좋았아요 
<br>사진 영역
</td>
<td id="likes" width=25% rowspan="4"><img src="images/icon/likeicon.png" width=20px> 1 </td>
</tr>
<tr><td>Son********** </td></tr>
<tr><td><img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
<img src="images/icon/star.png" width=15px>
</td></tr>
<tr><td >2017.12.08</td></tr>

</table>
<hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid #54d9cd">
</div>

</div>
</body>
</html>