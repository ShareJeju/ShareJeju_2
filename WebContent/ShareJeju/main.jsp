<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Share JEJU</title>
		<meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<meta name="author" content="">
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../css/style.css" />
		<script src="../js/index.js"></script>	
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
     	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</head>
	
	
	<jsp:include page="navbar.jsp"></jsp:include>
	<body class="homepage">

	<!-- Header -->
	
<%-- 	<jsp:include page="header.jsp"></jsp:include> 사진부분임 쓸사람만 쓰세요 --%>

		
		<jsp:include page="home.jsp"></jsp:include>
		<%-- <jsp:include page="mypage.jsp"></jsp:include> --%>
	
<!-- 		<div id="featured">
			<div class="container">
				회색화면 쓸사람만 쓰시오
			</div>
		</div>

	Main
		<div id="main">
			<div id="content" class="container">
				tweet 명언등
			</div>
		</div>

	Tweet
		<div id="tweet">
			<div class="container">
				tweet 명언등등
			</div>
		</div> -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<!-- footer.jsp -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</body>
</html>