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
			<!-- ������ �𸣰����� �̹����� �����ϴ� �ɷθ� ��ġ�� ������
			float�� ���� ���� : https://ofcourse.kr/css-course/float-%EC%86%8D%EC%84%B1 -->
			<li id="licenter_home"><a href="main.jsp"
				style="margin-top: 0px;">Ȩ</a></li>
			<li id="licenter_jeju"><a href="#" style="margin-top: 0px;">���ּҰ�</a></li>
			<li id="licenter_tour"><a href="#" style="margin-top: 0px;">������</a></li>
			<li id="licenter_rogo"><a href="#" style="margin-top: 0px;">�ΰ�</a></li>
			<li id="licenter_tasty"><a href="#" style="margin-top: 0px;">����</a></li>
			<li id="licenter_hotels"><a href="#" style="margin-top: 0px;">����</a></li>
			<li id="licenter_login"><a href="mem_login.jsp"
				style="margin-top: 0px;">�α���</a></li>
			<li id="licenter_MY">
				<div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <img src="images/menu.png" width="45px"
						height="30px">
					</a>
					<!-- dropdown-menu�� home_clider.jsp���� ��Ÿ���� ���� ��������� �����ָ� �ȵ� �ƹ� �ȵ� -->
					<!-- �浹 �ȳ����Ϸ��� �ٸ��� �� home_�ٿ��� ���� �������µ� �길 �ȵ�...�뼭�ϱ������  �ǵ�������� -->
					<div class="dropdown-menu" style="margin-top: 7px;">
						<a class="dropdown-item" href="my_mp.jsp">����������</a><br> <a
							class="dropdown-item" href="my_wl.jsp">��/���ƿ�</a><br> <a
							class="dropdown-item" href="mem_join.jsp">ȸ������</a><br> <a
							class="dropdown-item" href="#">�α׾ƿ�</a><br>
					</div>
				</div>
			</li>


		</ul>


	</div>
	</nav>

</body>
</html>