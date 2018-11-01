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

	<!-- Header -->
	<div id="main_home">
		<div id="content" class="container_home">

			<jsp:include page="home_header.jsp"></jsp:include>

			<div class="row" style="background-color:white; width:100%; margin: 0px auto; padding-right:50px">
				<jsp:include page="home/review.jsp"></jsp:include>			
			</div>
			<div class="row" style="background-color:white; width:100%; margin: 0px auto; padding-left:50px">
				<jsp:include page="home/tour.jsp"></jsp:include>
			</div>

			<!-- Tweet -->
			<div id="tweet">
				<div class="container">
					<section>
						<blockquote>&ldquo;�λ��� ����� ����. �츮�� �Ű� �� ���� �������� �ƴ϶�, ���� ���� �ִ� ǳ��� �� ǳ���� ���� �����̴�.&rdquo;</blockquote>
					</section>
				</div>
			</div>

		</div>
	</div>


</body>
</html>