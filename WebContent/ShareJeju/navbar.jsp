<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
.dropdown-menu {
	position: absolute;
	top: 100%;
	left: -50%;
	z-index: 1000;
	display: none;
	float: left;
	min-width: 160px;
	padding: 5px 0;
	margin: 2px 0 0;
	font-size: 14px;
	text-align: center;
	list-style: none;
	background-color: rgba(255, 255, 255, 0.9);
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175)
}

.navbar-inverse {
	background-color: #fff;
	border-color: #fff;
	margin-bottom: 0px;
}

.home_navbar {
	position: absolute;
	height: 50px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<!-- 이유는 모르겠으나 이미지를 설정하는 걸로만 위치가 잡힌다
			float에 대한 설명 : https://ofcourse.kr/css-course/float-%EC%86%8D%EC%84%B1 -->
			<li id="licenter_home"><a href="main.jsp"
				style="margin-top: 0px;">홈</a></li>
			<li id="licenter_jeju"><a href="#" style="margin-top: 0px;">제주소개</a></li>
			<li id="licenter_tour"><a href="#" style="margin-top: 0px;">관광지</a></li>
			<li id="licenter_rogo"><a href="#" style="margin-top: 0px;">로고</a></li>
			<li id="licenter_tasty"><a href="#" style="margin-top: 0px;">맛집</a></li>
			<li id="licenter_hotels"><a href="#" style="margin-top: 0px;">숙소</a></li>
			<li id="licenter_login"><a href="mem_login.jsp"
				style="margin-top: 0px;">로그인</a></li>
			<li id="licenter_MY">
				<div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <img src="images/menu.png" width="45px"
						height="30px">
					</a>
					<!-- dropdown-menu는 home_clider.jsp에서 스타일을 새로 지정해줬다 안해주면 안됨 아믄 안됨 -->
					<!-- 충돌 안나게하려고 다른건 다 home_붙여서 새로 만들어줬는데 얘만 안됨...용서하기싫은데  건들수가없네 -->
					<div class="dropdown-menu" style="margin-top: 7px;">
						<a class="dropdown-item" href="my_mp.jsp">마이페이지</a><br> <a
							class="dropdown-item" href="my_wl.jsp">찜/좋아요</a><br> <a
							class="dropdown-item" href="mem_join.jsp">회원가입</a><br> <a
							class="dropdown-item" href="#">로그아웃</a><br>
					</div>
				</div>
			</li>


		</ul>


	</div>
	</nav>

</body>
</html>