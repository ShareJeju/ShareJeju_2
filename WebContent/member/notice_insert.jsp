<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.table>tbody>tr>th{
	vertical-align: middle; 	
}
.table>tbody>tr>td{
vertical-align: middle; 	
}
.table{
	margin-bottom: 0px;
}
</style>
</head>
<body>
	<div class="container" style="margin-top:100px">
	  	<h3 class="text-center">������ �ۼ�</h3>
		<div class="row">
		<form method="post" action="../member/notice_insert_ok.do">
			<table class="table table-hover">
				<tr>
					<th width=20% class="text-center success">����</th>
					<td colspan="5"><input type=text name=title size=70 required></td>
				</tr>
				<tr>
					<th width=20% class="text-center success">����/���� ����</th>
					<td colspan="3">
			          <input type="radio" class="form-check-input" name=news value="0"
			          style="margin-left:10px" checked>
                  		����
                 	  <input type="radio" class="form-check-input" name=news value="1"
                 	   style="margin-left:10px">
                  		����					
					</td>
				</tr>
				<tr>
					<th width=20% class="text-center success">����</th>
					<td colspan="3"><textarea rows="20" cols="100" name=contents required></textarea></td>
				</tr>
				<tr>
					<th width=20% class="text-center success">÷������</th>
					<td colspan="3">
				        <input type="file" name=files>
					</td>
				</tr>
			</table>

			<table class="table">
				<tr>
					<td width=80%><a href="../member/notice_list.do" class="btn btn-md btn-danger">���</a></td>
					<td class="text-right">
					   <input type=submit value="�ۼ�"
			  	      id="writeBtn" class="btn btn-md btn-success">
			  	 	  <input type=button value="���"
			  	      class="btn btn-md btn-secondary"
			  	      onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>