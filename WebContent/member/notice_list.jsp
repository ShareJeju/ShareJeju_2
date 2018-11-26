<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <style type="text/css">
  .table{
  	margin-bottom: 0px;
  }
  hr{
   	width: 30%;
   	margin-bottom:15px;
   	margin-top:10px;
  }
  </style>
</head>
<body>
	<div class="container" style="margin-top:100px">
		<div class="row">
			<h3 class="text-center">��������</h3>
			<hr>
			<p align=center>���ֵ��� �������װ� ������ �˷��帳�ϴ�</p>
			<div class="row">
	     		<a href="../member/notice_insert.do" class="btn btn-sm btn-success">����</a>
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
			  <td width=20% class="text-center">${vo.created_at }</td>
			  <td width=10% class="text-center">${vo.hit }</td>
			 </tr>
			 </c:forEach>
          </table>
         	   <table class="table table-hover">
			    <tr>
			     <td class="text-left">
			       Search:<select name=fs>
			        <option value="subject">����</option>
			        <option value="content">����</option>
			       </select>
			       <input type=text name=ss size=15>
			       <input type=button value=�˻�
			        class="btn btn-xs btn-primary">
			     </td>
			     
			     <!-- ����¡ó�� -->
			     <td class="text-right">
			      <a href="#" class="btn btn-xs btn-warning">����</a>
			       ${curpage } page / ${totalpage } pages
			      <a href="#" class="btn btn-xs btn-warning">����</a>
			     </td>
			    </tr>
			   </table>
			   	<div class="text-center"  style="margin-top:30px">
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
				 </div>
     </div>
  </div>
</body>
</html>