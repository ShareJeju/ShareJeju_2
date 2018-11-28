<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- ��¥���� -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
<td style="margin-left:70px" width=95%>
<h2 style="font-weight:bold;color:#54d9cd;">���డ�� ����(����)</h2>
</td>
<td width=5%>
	<%-- <c:if test="${sessionScope.id!=null }"> <!-- �α����� ���� �� --> --%>
	<a href="../food/reviewinsert.do?id=${id }" class="btn btn-md btn_color">���� ����</a>
<%-- 	</c:if> --%>
</td>
</tr>
<tr>
<td colspan="2"><h4>�ֽ� | ��õ | ��</h4></td>
</tr>
</table>




 <table class="reviewtable">
<c:forEach var="vo" items="${reviewlist }">  
<tr>

<td width="15%"><img src="../images/profile1.jpg" width=100px style="border-radius:50%;" ></td>
<td width=75% rowspan="4" style="text-align:left;">
<h3 style="font-weight:bold;color:#54d9cd;"> <!-- ���� ���� --> ${vo.review_subject }</h3>
<!-- ���俵�� --> ${vo.review_content }
<br><!-- ���� ���� -->
</td>
<td id="likes" width=25% rowspan="4"><img src="../images/icon/likeicon.png" width=20px> 1
<br><br><a href="../food/reviewupdate.do?review_id=${vo.review_id }" class="btn btn-md btn_color">����</a> <a href="../food/reviewdelete.do?review_id=${vo.review_id }&id=${vo.cid}" class="btn btn-md btn_color">����</a> </td>

</tr>
<%-- <tr><td><!-- ���� ��ȣ --> ${vo.review_id } </td></tr> --%>
<tr><td><!-- ���̵� ���� -->  ${vo.review_userid } </td></tr>
<tr><td ><!-- ��¥���� -->  <fmt:formatDate value="${vo.review_regdate }" 
            pattern="yyyy-MM-dd"/></td></tr>
<tr>
<td colspan="3">
<hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid #54d9cd">
</td>
</tr>
</c:forEach> 
</table>
</div> 
<!-- ���� -->
</body>
</html>