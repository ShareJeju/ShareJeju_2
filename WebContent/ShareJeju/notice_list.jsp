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
  hr{
   	width: 30%;
   	margin-bottom:15px;
   	margin-top:10px;
  }
  </style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="text-center">공지사항</h1>
			<hr>
			<p align=center>제주도의 공지사항과 뉴스를 알려드립니다</p>
			<table class="table table-hover" style="margin-top:100px">
			 <tr style="background-color: rgb(242, 238, 238);">
			  <th width=10% class="text-center">글번호</th>
			  <th width=60% class="text-center">제목</th>
			  <th width=20% class="text-center">작성일</th>
			  <th width=10% class="text-center">조회수</th>
			 </tr>
 			 <tr>
			  <td width=10% class="text-center">asdf</td>
			  <td width=60% class="text-left"><a href="#">공지사항제목111</a></td>
			  <td width=20% class="text-center">asdf</td>
			  <td width=10% class="text-center">asdf</td>
			 </tr>
          </table>
  	     <form style="margin-top:20px;">
          Search:<select>
                  <option value="name">이름</option>
                  <option value="subject">제목</option>
                  <option value="content">내용</option>
                 </select>
                 <input type=text name=ss>
                 <input type=submit value=찾기 class="btn btn-sm btn-primary">
          </form>
     </div>
  </div>
</body>
</html>