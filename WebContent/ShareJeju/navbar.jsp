<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">

</style>
<title>Insert title here</title>
</head>
<body>
	<nav class="home_navbar home_navbar-inverse">
	<div class="home_container-fluid">	
		<ul class="home_nav home_navbar-nav">
			<!-- 이유는 모르겠으나 이미지를 설정하는 걸로만 위치가 잡힌다
			float에 대한 설명 : https://ofcourse.kr/css-course/float-%EC%86%8D%EC%84%B1 -->
			<li id="licenter_home"><a href="main.jsp" style="margin-top:-3px;">홈</a></li>
			<li id="licenter_jeju"><a href="#" style="margin-top:-3px;">제주소개</a></li>
			<li id="licenter_tour"><a href="#" style="margin-top:-3px;">관광지</a></li>
			<li id="licenter_rogo"><a href="#" style="margin-top:-3px;">로고</a></li>
			<li id="licenter_tasty"><a href="#" style="margin-top:-3px;">맛집</a></li>
			<li id="licenter_hotels"><a href="#" style="margin-top:-3px;">숙소</a></li>
			<li id="licenter_login"><a href="mem_login.jsp" style="margin-top:-3px;">로그인</a></li>
			<li id="licenter_MY" >
			    <div class="dropdown" margin-top="-5px">
				  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <img src = "images/menu.png" width="45px" height="30px" margin-top="-5px">
				  </a>
				  <!-- dropdown-menu는 home_clider.jsp에서 스타일을 새로 지정해줬다 안해주면 안됨 아믄 안됨 -->
				  <!-- 충돌 안나게하려고 다른건 다 home_붙여서 새로 만들어줬는데 얘만 안됨...용서하기싫은데  건들수가없네 -->
				  <div class="dropdown-menu">
				    <a class="dropdown-item" href="my_mp.jsp">마이페이지</a><br>
				    <a class="dropdown-item" href="my_wl.jsp">찜/좋아요</a><br>
				    <a class="dropdown-item" href="mem_join.jsp">회원가입</a><br>
				    <a class="dropdown-item" href="#">로그아웃</a><br>
				  </div>
				</div>
		    </li>
		    

		</ul>
		
		
	</div>
	</nav>

</body>
</html>