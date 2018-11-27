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
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
</head>


<body class="homepage">
	<jsp:include page="home_header.jsp"></jsp:include>
	<!-- Header -->
	<div id="main_home" style="background-color: white;">
		<div id="content" class="container">

			<div class="row" style="background-color:white;margin-top:10px; float: right; left:-1%">
				<jsp:include page="../weather.jsp"></jsp:include>
			</div>

			<div class="row" style="background-color:white;  margin-top:50px;  padding-right:50px;">
				<div style="margin-top:-50px; margin-bottom: -55px"><h3>º£½ºÆ® ¸®ºä</h3></div>
				<div style="margin-top:-13px;"><jsp:include page="review.jsp"></jsp:include></div>		
			</div>
			
			<div class="row" style="background-color:white; width:100%; padding-right:50px">
				<div style="margin-top:-70px;"><h3>º£½ºÆ® ¸À±¤¼÷</h3></div>
				<jsp:include page="tour.jsp"></jsp:include>	
			</div>
			

		</div>
	</div>
	
	<!-- Tweet -->
			<div id="tweet">
				<div class="container" style="height: 100px;">
					<section style="margin-top: 30px">
						<blockquote>&ldquo;duddj duddj duddj duddj.&rdquo;</blockquote>
					</section>
				</div>
			</div>
</body>
</html>