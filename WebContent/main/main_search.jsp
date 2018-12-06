<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div style="margin-top: 80px; text-align: center;">
		<form action="../main/main_search.do" method="post">
			<input type="text" name="name" value="${name}">
			<button type="submit" class="btn btn-sm btn-info">검색</button>
		</form>
	</div>
	<p>
	<div class="container">

		<c:if test="${count==0}">
			<table class="table" style="height: 555px;">
				<tr>
					<th class="text-center">검색된 결과가 없습니다.</th>
				</tr>
			</table>
		</c:if>
		
		<c:forEach var="vo" items="${Tlist }">
			<div class="col-sm-3">
				<div class="panel">
						<a href="../schedule/schedule_detail.do?id=${vo.id}"> <img
							src="$../schedule_upload/${vo.main_img}" width=100% height=200>
						</a>
						<div class="panel-heading" style="text-align: right">
							${fn:length(vo.title)>15?fn:substring(vo.title,0,15)+="...":vo.title }</div>
					</div>
			</div>
		</c:forEach>

		<c:forEach var="vo" items="${list }">
			<div class="col-sm-3">
				<c:if test="${vo.category=='맛집'}">
					<div class="panel">
						<a href="../food/fooddetailcontent.do?id=${vo.id }"> <img
							src="${vo.img}" width=100% height=200>
						</a>
						<div class="panel-heading" style="text-align: right">
							${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }</div>
					</div>
				</c:if>

				<c:if test="${vo.category=='숙박'}">
					<div class="panel">
						<a href="../hotel/hotelDetailContent.do?no=${vo.id }"> <img
							src="${vo.img}" width=100% height=200>
						</a>
						<div class="panel-heading" style="text-align: right">
							${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }</div>
					</div>
				</c:if>

				<c:if test="${vo.category=='관광'}">
					<div class="panel">
						<a href="../tour/tourdetailcontent.do?id=${vo.id }"> <img
							src="${vo.img}" width=100% height=200>
						</a>
						<div class="panel-heading" style="text-align: right">
							${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }</div>
					</div>
				</c:if>
			</div>
		</c:forEach>
	</div>
	<p>
</body>
</html>