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
  .table{
  	margin-bottom: 0px;
  }
  </style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="text-center">공지사항</h1>
			<table class="table table-hover">
			 <tr class="success">
			  <th width=10% class="text-center">글번호</th>
			  <th width=60% class="text-center">제목</th>
			  <th width=20% class="text-center">작성일</th>
			  <th width=10% class="text-center">조회수</th>
			 </tr>
 			 <tr>
			  <td width=10% class="text-center">asdf</td>
			  <td width=60% class="text-center">asdf</td>
			  <td width=20% class="text-center">asdf</td>
			  <td width=10% class="text-center">asdf</td>
			 </tr>
          </table>
      <table class="table">
         <tr>
          <td class="text-center">
          <form method="post" action="board_find.jsp" size=15>
          Search:<select name=fs>
                  <option value="name">이름</option>
                  <option value="subject">제목</option>
                  <option value="content">내용</option>
                 </select>
                 <input type=text name=ss>
                 <input type=submit value=찾기 class="btn btn-sm btn-primary">
          </form>
           </td>
          </tr>
       </table>
            </div>
  </div>
</body>
</html>