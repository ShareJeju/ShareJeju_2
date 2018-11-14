<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.out{
	text-align:center;
	margin: 20px;

	
}
.in {
 display: inline-block;
 width: 50%;
 height: 20px;
 }
 
.out2{
	text-align:center;
	margin: 20px;

	
}
.in2 {
 display: inline-block;
 width : 100%;
 height : 20px;
 }

</style>
</head>

<body style="background-color:#36b1bf;">
	<!-- navbar -->
	
	
	<jsp:include page="navbar.jsp"></jsp:include>
	
	
	<!-- 검색창 -->
	<div class="out" style="width: 1500px; height: 50px;">
	
		<div class="in">
		<jsp:include page="shareSearchBar.jsp"></jsp:include>
	</div>
	</div>
	<!-- Hashtag -->
	
	<center>
	<div class="out2" style="width: 1500px; height: 50px;">
	<div class="in2">
		<font size="5" style="align: center;"><a href="schedule_list.jsp" style="color: black;">#여행기</a></font>&nbsp;&nbsp;
		<font size="5" style="align: center;"><a href="#" style="color: black;">#맛집</a></font>&nbsp;&nbsp;
		<font size="5"style="align: center;"><a href="#" style="color: black;">#관광지</a></font>&nbsp;&nbsp;
		<font size="5" style="align: center;"><a href="#" style="color: black;">#숙소</a></font>
	
	</div>
	
	</div>
	
	</center>
	<!-- 최신순 인기순 button -->
	<div id="FilterButton">
	<div id="Content">
	
		<jsp:include page="shareButton.jsp"></jsp:include>
	
	</div>
	</div>
	<!-- 내용 출력 -->
	<div id="sharecontent">
	<center>
	<jsp:include page="sharemaincontent.jsp"></jsp:include>
	</center>
	</div>
</body>
</html>