<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body style="background-color: white;">
	<div id="schedule_header" style="width: 100%; height: 400px; margin-bottom: 30px"></div>

	<div class="container" style="width: 700px;">
		<h1 style="font-size: 30px; margin-bottom: 5px; color: #36b1bf">여행기 리뷰</h1>
		<div style="margin-left: 5px; margin-bottom: 10px;">
			<input type=button value="최신순" class="btn btn-xs btn-info" id="">
			<input type=button value="인기순" class="btn btn-xs btn-primary active" id="">
			<a href="schedule_input.jsp"><input type=button value="리뷰쓰기" class="btn btn-xs btn-primary active" style="float: right;"></a>
		</div>
	</div>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>
	
	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>
	
	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>

	<jsp:include page="schedule_list_detail.jsp"></jsp:include>
</body>
</html>