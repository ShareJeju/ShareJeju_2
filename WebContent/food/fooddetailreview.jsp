<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- ��¥���� -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">

$(function(){
$('.jjimBtn').click(function(){
	var id=$(this).attr("value");
	$.ajax({
		type:'post',
		url:'../food/jjim.do',
		data:{"id":id},
		success:function(res){
			location.href="../food/fooddetailcontent.do?id="+id;
		}
	});
	});
});
</script>
<style type="text/css">
.jjimBtn {
list-style: none;
}
</style>
</head>
<body>
<!-- ���� -->
<div id=detail_review>
<!-- <div style="margin-left:70px">
<h2 style="font-weight:bold;color:#54d9cd;">���డ�� ����(����)</h2>
<h4>�ֽ� | ��õ | ��</h4>
</div> -->
<table style="margin-left:70px" width=90%;>
<tr>
<td style="margin-left:70px" width=87%>
<h2 style="font-weight:bold;color:#54d9cd;">���డ�� ����</h2>
</td>
 <c:if test="${sessionScope.userid!=null }">
<td width=5%>
	 <!-- �α����� ���� �� --> 
	
	<a href="../food/reviewinsert.do?id=${id }" class="btn btn-md btn_color">���� ����</a> 
	 
</td>
</c:if>
 <c:if test="${sessionScope.userid!=null }">
<td width=8%>
<c:if test="${dvo.bjjim==false }">
 <li class="jjimBtn" value="${dvo.id }"><a href="#">��<img src="../images/icon/heart1.png" width=30px></a></li>
</c:if>
<c:if test="${dvo.bjjim==true }">
<a href="#">�� <img src="../images/icon/heart2.png" width=30px></a>
</c:if>
</td>
</c:if>


</tr>
<!-- <tr>
<td colspan="2"><h4>�ֽ� | ��õ | ��</h4></td>
</tr> -->
</table>
<c:forEach var="vo" items="${reviewlist }">  
 <table class="reviewtable">

<tr>

<td width="15%">

   <c:if test="${empty vo.profile_img }">
            <img src="../images/icon/girl.png" width=100px style="border-radius:50%;" >
            </c:if>
 <c:if test="${!empty vo.profile_img }">

<img src="../member/${vo.profile_img }" width=100px style="border-radius:50%;" >
<br><br><!-- ���̵� ���� -->  ${vo.review_userid } 
<br><!-- ��¥���� -->  <fmt:formatDate value="${vo.review_regdate }" 
            pattern="yyyy-MM-dd"/>
            </c:if>
</td>
<td width=75% rowspan="3" style="text-align:left; ">
<h3 style="font-weight:bold;color:#54d9cd;"> <!-- ���� ���� --> ${vo.review_subject }</h3>
<!-- ���俵�� --> ${vo.review_content }
<br><!-- ���� ���� -->
  <c:if test="${vo.review_img ne null }">
<img src="../FoodReivewImg/${vo.review_img }" width=500px >
</c:if>
  <c:if test="${vo.review_img eq null }">
&nbsp;
</c:if>

</td>
<td id="likes" width=25% rowspan="3"><!-- <img src="../images/icon/likeicon.png" width=20px> 1 -->

<br><br>
<c:if test="${vo.review_userid==sessionScope.userid }">
<a href="../food/reviewupdate.do?review_id=${vo.review_id }" class="btn btn-md btn_color">����</a> 
<a href="../food/reviewdelete.do?review_id=${vo.review_id }&id=${vo.cid}" class="btn btn-md btn_color">����</a>
</c:if>
 </td>

</tr>
<%-- <tr><td><!-- ���� ��ȣ --> ${vo.review_id } </td></tr> --%>
<tr><td></td></tr>
<tr><td ></td></tr>
<tr>
<!-- <td colspan="3" style="text-align:left; ">

</td> -->
</tr>
</table>
<hr size="2" width="90%" style="padding:0; margin:5px;border:1px solid #54d9cd">
</c:forEach> 

</div> 
<!-- ���� -->
</body>
</html>