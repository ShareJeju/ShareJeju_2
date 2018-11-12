<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<div class="container">
		<h3 class="text-center">공지내용보기</h3>
		<div class="row">
			<table class="table table-hover">
				<tr>
					<th width=20% class="text-center success">제목</th>
						<td colspan="3" class="text-center">공지)제목    //  뉴스) 제목</td>
				</tr>
				<tr>
					<td width=80% colspan="2" class="text-right">등록일 : YYYY-MM-DD 수정일 : YYYY-MM-DD</td>
					<th class="text-center success">조회수</th>
						<td class="text-center">23</td>
				</tr>
				<tr>
					<th width=20% class="text-center success">내용</th>
						<td colspan="3" class="text-left" height=450px>내용내용내용</td>
				</tr>
				<tr>
					<th width=20% class="text-center success">첨부파일</th>
						<td colspan="3" class="text-left">파일1.pdf</td>
				</tr>
			</table>
			<table class="table">
				<tr>
					<td width=80%><a href="list.do" class="btn btn-md btn-danger">목록</a></td>
					<td class="text-right"><a href="board_update.jsp?no=${no }" class="btn btn-md btn-info">수정</a>
					<a href="#" class="btn btn-md btn-primary" id="delbtn">삭제</a></td>
				</tr>
				<tr id="del" style="display:none">
					<td class="text-right">
					<form method="post" action="board_delete_ok.jsp">
						비밀번호 : <input type="password" name=pwd size=10>
						<input type="hidden" name="no" value="${no }">
						<input type=submit class="btn btn-sm btn-danger" value="삭제">
					</form>
					</td>
				</tr>
			</table>
		</div>
		<div class="row" >
		  <table class="table" style="margin-top:20px">
			<tr>
			   <th width=20% class="text-center" style="background-color: rgb(242, 238, 238);">이전글</th>
				<td width=80% class="text-left"><a href="#">이전글클릭</a></td>
			</tr>
			<tr>
				<th width=20% class="text-center" style="background-color: rgb(242, 238, 238);">다음글</th>
				 <td width=80% class="text-left"><a href="#">다음글클릭</a></td>
			</tr>
		  </table>
		 </div>
	</div>
</body>
</html>