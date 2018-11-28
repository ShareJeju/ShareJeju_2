<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 날짜포맷 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</style>
</head>
<body>
<div class="sub_contents">
<div id=detail_photo><img src="${dvo.img}" width=100% height=400px ></div>
<div id=detail_info >
<h3 id=detailname>${dvo.name}</h3>
<br>
<h4>${dvo.text}</h4>
<br>
<h4 id=info>${dvo.name}</h4>

${dvo.addr}<br>
${dvo.tel}<br>
${dvo.menu}<br>
휴무
</div>
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
<!-- 리뷰영역 -->
 <jsp:include page="fooddetailreview.jsp"></jsp:include>
<!-- 리뷰영역 -->
</div>
</body>
</html>