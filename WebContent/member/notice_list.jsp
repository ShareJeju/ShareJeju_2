<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
  <style type="text/css">
  .table{
  	margin-bottom: 0px;
  }
  .nhr{
   	width: 30%;
   	margin-bottom:15px;
   	margin-top:10px;
   	margin:0 30 0 0 ;
  }
  </style>
</head>
<body>
	<div class="container" style="margin-top:100px; margin-bottom:100px;">
		<div class="row">
			<h3 class="text-center">��������</h3>
			<hr class="nhr">
			<p align=center>���ֵ��� �������װ� ������ �˷��帳�ϴ�</p>
			<div class="row">
			 <c:if test="${mvo.admin==0 && sessionScope.userid!=null }">
	     		<a href="../member/notice_insert.do" class="btn btn-sm btn-success">����</a>
			 </c:if>
			</div>
			<table class="table table-hover" style="margin-top:20px">
			 <tr style="background-color: rgb(242, 238, 238);">
			  <th width=10% class="text-center">�۹�ȣ</th>
			  <th width=60% class="text-center">����</th>
			  <th width=20% class="text-center">�ۼ���</th>
			  <th width=10% class="text-center">��ȸ��</th>
			 </tr>
			 <c:forEach var="vo" items="${list }">
 			 <tr>
			  <td width=10% class="text-center">${vo.id }</td>
			  <td width=60% class="text-left"><a href="../member/notice_detail.do?id=${vo.id }">${vo.title }</a></td>
			  <td width=20% class="text-center">
			  	<fmt:formatDate value="${vo.created_at }" pattern="yyyy�� MM�� dd�� hh:mm:ss"/>
			  </td>
			  <td width=10% class="text-center">${vo.hit }</td>
			 </tr>
			 </c:forEach>
          </table>
         	   <table class="table table-hover">
			    <tr>
  			     <td class="text-left">
  			      <form action="../member/notice_search.do" method="post">
			       Search:<select name=cate>
			        <option value="title">����</option>
			        <option value="contents">����</option>
			       </select>
			       <input type=text name=data size=15>
			       <input type=submit value=�˻�
			        class="btn btn-xs btn-primary">
			     </form>
   			     </td>
			     <!-- ����¡ó�� -->
			     <td class="text-right">
			      <a href="../member/notice_list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-xs btn-warning">����</a>
			       ${curpage } page / ${totalpage } pages
			      <a href="../member/notice_list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-xs btn-warning">����</a>
			     </td>
			    </tr>
			   </table>
<!-- 			   	<div class="text-center"  style="margin-top:30px">
				  <ul class="pagination pagination-sm">
				    <li class="page-item disabled">
				      <a class="page-link" href="#">&laquo;</a>
				    </li>
				    <li class="page-item active">
				      <a class="page-link" href="#">1</a>
				    </li>
				    <li class="page-item">
				      <a class="page-link" href="#">2</a>
				    </li>
				    <li class="page-item">
				      <a class="page-link" href="#">3</a>
				    </li>
				    <li class="page-item">
				      <a class="page-link" href="#">4</a>
				    </li>
				    <li class="page-item">
				      <a class="page-link" href="#">5</a>
				    </li>
				    <li class="page-item">
				      <a class="page-link" href="#">&raquo;</a>
				    </li>
				  </ul>
				 </div> -->
     </div>
  </div>
</body>
</html>