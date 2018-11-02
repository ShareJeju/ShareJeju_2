<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">	
		<ul class="nav navbar-nav">
			<!-- 이유는 모르겠으나 이미지를 설정하는 걸로만 위치가 잡힌다
			float에 대한 설명 : https://ofcourse.kr/css-course/float-%EC%86%8D%EC%84%B1 -->
			<li id="licenter_home"><a href="main.jsp">홈</a></li>
			<li id="licenter_jeju"><a href="#">제주소개</a></li>
			<li id="licenter_tour"><a href="#">관광지</a></li>
			<li id="licenter_rogo"><a href="#">로고</a></li>
			<li id="licenter_tasty"><a href="#">맛집</a></li>
			<li id="licenter_hotels"><a href="#">숙소</a></li>
			<li id="licenter_login"><a href="login.jsp">로그인</a></li>
			<li id="licenter_MY">
			    <div class="dropdown">
				  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <img src = "images/menu.png" width="45px" height="30px" margin-top="5em">
				  </a>
				  <div class="dropdown-menu" >
				    <a class="dropdown-item" href="my_mp.jsp">마이페이지</a><br>
				    <a class="dropdown-item" href="my_wl.jsp">찜/좋아요</a><br>
				    <a class="dropdown-item" href="join.jsp">회원가입</a><br>
				    <a class="dropdown-item" href="#">로그아웃</a><br>
				  </div>
				</div>
		    </li>
		    

		</ul>
		
		
	</div>
	</nav>

</body>
</html>