<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="#">홈</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
      <a class="navbar-brand navbar-header" href="#">로고</a>

    <ul class="nav navbar-nav">
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li id="licenter_MY">
				<div class="dropdown" margin-top="-5px">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <img src="images/menu.png" width="45px"
						height="30px" margin-top="-5px">
					</a>
					<!-- dropdown-menu는 home_clider.jsp에서 스타일을 새로 지정해줬다 안해주면 안됨 아믄 안됨 -->
					<!-- 충돌 안나게하려고 다른건 다 home_붙여서 새로 만들어줬는데 얘만 안됨...용서하기싫은데  건들수가없네 -->
					<div class="dropdown-menu">
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
