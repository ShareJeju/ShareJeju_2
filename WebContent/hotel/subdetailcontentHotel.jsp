<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">

.sub_contents{
margin:0 auto;
width:75%;
}
#detail_photo
{
margin-top:100px;
background-color:red;
width:50%;
height:400px;
float:left;
}
#detail_info
{
margin-top:100px;
display:inline-block;
width:50%;
height:400px;
padding:20px;
background-color:#54d9cd;
}
#detail_bar
{
padding-top:20px;
}
#detail_bar ul
{
display:block;
width:100%;
height:100px;
}
#detail_review
{
clear:both;
}
#detailname
{
font-weight: bold;
}
#info
{
font-weight: bold;
}
#detail_bar ul li
{
width:14%;
list-style:none;
float:left;
font-size:15px;
font-weight:bold;
}
#detail_review table td

{
padding:7px;
}
#detail_review table tr #likes

{
color:#54d9cd;
}
#detail_review .reviewtable
{
border=0;
width:90%;
margin:0 auto;
text-align:center;
}
th
</style>
<script type="text/javascript">
$(function(){
	$('#review').click(function(){
		$('.reviewtable').show();
	});
});

$(function(){
$('.jjimBtn').click(function(){
	var id=$(this).attr("value");
	$.ajax({
		type:'post',
		url:'../hotel/jjim.do',
		data:{"id":id},
		success:function(res){
			location.href="../hotel/hotelDetailContent.do?no="+id;
		}
	});
	});
});
</script>
</head>
<body>
<div class="sub_contents">
<div id=detail_photo><img src="${vo.img }" width=100% height=400px ></div>
<div id=detail_info >

<h3 id=detailname>${vo.name }</h3>
<!-- <br>
<h4>���ܼ���</h4>
<br> -->
<br>
<h4 id=info>����</h4>
${vo.text }<br>

<h4 id=info>�ּ�</h4>
${vo.addr }<br>


<h4 id=info>��ȭ��ȣ</h4>
${vo.tel }
</div>
<!-- reservation -->
		<div id="reservation" >
			<div class="container">
				<!-- footer.jsp -->
				<jsp:include page="reservation.jsp"></jsp:include>
			</div>
		</div>

<div id=detail_bar style="margin-left:550px">
<ul class="text-center">
<c:if test="${sessionScope.userid!=null }">
<c:if test="${vo.bjjim==false }">
<li class="jjimBtn" value="${vo.id }"><img src="../images/icon/heart.png" style="position:absoulte;" width=30% ><br><br>��</li>
</c:if>
<c:if test="${vo.bjjim==true }">
<li><img src="../images/icon/heart.png" style="position:absoulte;" width=30% ><br><br>�� �Ϸ�!</li>
</c:if>
</c:if>
<c:if test="${sessionScope.userid!=null }">
<li><a href="../hotel/hotel_review_board.do?no=${vo.id }"><img src="../images/icon/review.png" width=30% ><br><br>���� ����</a></li>
</c:if>
</ul>
</div>

<div id=detail_review>
<table style="margin-left:70px" width=90%;>
<tr>
<td style="margin-left:70px" width=95%>
<h2 style="font-weight:bold;color:#54d9cd;" id="review">���亸�� Click!</h2>
</td>
</tr>
</table>

<!-- ���� ���̺� -->
<table class="reviewtable" style="display:none;">
 
<c:forEach var="rvo" items="${list }">

<table>
<tr>
	<!-- ����� ���� -->
	<c:if test="${empty rvo.profile }">
		<td width="15%"><img src="../images/icon/boy.png" width=150px style="border-radius:50%;" >
		<br>
		${rvo.review_userid }
		<br>
		${rvo.dbday }
		</td>
    </c:if>
    <c:if test="${!empty rvo.profile }">
	    <td width="15%"><img src="../member/${rvo.profile }" width=150px style="border-radius:50%;" >
	    <br>
		${rvo.review_userid }
		<br>
		${rvo.dbday }
		</td>
    </c:if>


<!-- ���� �ۼ� ���� (content) -->
	<td width=75% rowspan="4" style="text-align:left;">
		<h4>���� : ${rvo.review_subject} </h4>
		<h5>�ı� : ${rvo.review_content }</h5> 
		<h5><img src="../hotelReivewImg/${rvo.review_img }" width=250px height=200px></h5>
		<br>
		<hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid gray">
	</td>

<!-- ���� ����,���� -->
	<td width=10% class="text-right">
		<c:if test="${rvo.review_userid==sessionScope.userid }">
			<a class="btn btn-xs btn-info update" href="../hotel/hotel_review_update.do?no=${rvo.review_id }&cid=${vo.id}">����</a> 
			<a href="../hotel/review_delete.do?no=${rvo.review_id }&cid=${vo.id}" class="btn btn-xs btn-info">����</a>
		</c:if>
	</td> 
</tr>
</table>
<!-- ����� �̸�(name) -->
<%-- <img src="../member/${rvo.profile }"> --%>
<%-- <tr><td>${rvo.review_userid } </td></tr> --%>
<!-- ���� �ۼ� ��¥ (regdate)-->
<%-- <tr><td >${rvo.dbday }</td></tr> --%>

</c:forEach>

</table>
</div>
</div>
</body>
</html>