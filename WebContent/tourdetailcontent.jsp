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
background-color:lightgray;
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
#detail_map
{
background-color:green;
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
<div id=detail_bar>
<ul class="text-center">
<li><img src="images/icon/like.png" width=30% ><br><br>좋아요</li>
<li><img src="images/icon/heart.png" width=30% ><br><br>찜</li>
<li><img src="images/icon/review.png" width=30% ><br><br>리뷰</li>
<li><img src="images/icon/write.png" width=30% ><br><br>일정 등록</li>
<li><img src="images/icon/map.png" width=30% ><br><br>방문했어요</li>
<li><img src="images/icon/view.png" width=30% ><br><br>조회</li>
<li><img src="images/icon/share.png" width=30% ><br><br>SNS 공유</li>
</ul>

</div>
<div id=detail_map>상세보기지도영역</div>

</div>
</body>
</html>