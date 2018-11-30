<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.row{
	margin: 0px auto; /*가운데 정렬*/
	width: 500px;
}
h3{
	text-align: center;
}
td{
	font-family: 맑은고딕;
	font-size: 11pt;
}
</style>
</head>
<body style="background-color: white;">
	<div id="schedule_header" style="width: 100%; height: 400px; margin-bottom: 30px"></div>

	<div class="container" style="width: 700px;">
		<h1 style="font-size: 30px; margin-bottom: 5px; color: #36b1bf">여행기 리뷰</h1>
		<div style="margin-left: 5px; margin-bottom: 10px;">
			<input type=button value="최신순" class="btn btn-xs btn-info" id="">
			<input type=button value="인기순" class="btn btn-xs btn-primary active" id="">
			<c:if test="${sessionScope.userid!=null}">
			<a href="../schedule/schedule_insert.do"><input type=button value="리뷰쓰기" class="btn btn-xs btn-primary active" style="float: right;"></a>
			</c:if>
		</div>
	</div>

	<c:forEach var="vo" items="${list }">
		<div class="container" style="height: 190px;">
			<div class="row" style="height: 170px;">
				<table class="table table-hover" style="border: hidden;">
					<tr>
						<td rowspan="3"><img src="../schedule_upload/${vo.main_img}" width="100px"
							height="120px"></td>
						<td width=70% class="text-left"></td>
					</tr>

					<tr style="height: 30px; border: hidden;">
						<td width=70% class="text-left"
							style="padding-top: 20px; margin-bottom: -20px"><a href="../schedule/schedule_detail.do?id=${vo.id}">${vo.title }</td>
					</tr>

					<tr style="margin-top: -10px; border: hidden;">
						<td width=70% class="text-left">${vo.hashtag }</td>
					</tr>

					<tr>
						<td width=30% class="text-center"
							style="padding: 0; border: hidden;">${vo.userid }</td>
						<td width=40% class="text-center"
							style="padding: 0; border: hidden;">${vo.day } <img
							src="../images/icon/s_heart.png" width="20px" height="20px"
							style="float: right"></td>
					</tr>
				</table>
				<hr color="gray" size="5" width="110%"
					style="margin: 0; padding: 0; margin-top: -4px;">
			</div>

		</div>
	</c:forEach>
</body>
</html>