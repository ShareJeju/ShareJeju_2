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
      <li><a href="#">Ȩ</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
      <a class="navbar-brand navbar-header" href="#">�ΰ�</a>

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
					<!-- dropdown-menu�� home_clider.jsp���� ��Ÿ���� ���� ��������� �����ָ� �ȵ� �ƹ� �ȵ� -->
					<!-- �浹 �ȳ����Ϸ��� �ٸ��� �� home_�ٿ��� ���� �������µ� �길 �ȵ�...�뼭�ϱ������  �ǵ�������� -->
					<div class="dropdown-menu">
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
