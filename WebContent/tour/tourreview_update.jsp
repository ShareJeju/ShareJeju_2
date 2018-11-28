<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script src="../js/index.js"></script>	
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#review_write{
  width:50%;
  margin:0 auto;
  margin-top:50px;
  text-align:center;
  border-color:black;
  color:gray;
}
#review_write th{
  padding:10px;
  background-color:orange;
  color:white;
}
#review_write td{
  padding:10px;
}
h3
{
text-align:center;
}
</style>
</head>
<body style="background-color:white">
  <div>
    <h3>후기작성</h3>
    <form method="post" action="../tour/tourreview_update_ok.do">
    <table class="table table-hover" id="review_write">
      <tr>
       <th width=15% class="text-center">제목</th>
	    <td width=85% class="text-left" colspan="5">
	      <input type=text name=review_subject size=50 value="${vo.review_subject}">
	      <input type="hidden" name="cid" value="${vo.review_id }">
	    </td>
      </tr>
      
      <tr>
	    <th style="vertical-align:middle" class="text-center">후기</th>
	    <td width=85% class="text-left" colspan="5">
	      <textarea rows="10" cols="50" name=review_content>${vo.review_content }</textarea>
	    </td>
	  </tr>
	  
      <tr>
       <th width=15% class="text-center">사진 업로드</th>
       <td width=85% class="text-left">
        <input type=file name=upload size=10 id="upload">
        
       </td>
      </tr>
      
      <tr>
       <td class="text-center" colspan="2">
        <input type=submit value="수정" disabled id="writeBtn" class="btn btn-sm btn-primary">
        <input type=button value="취소" class="btn btn-sm btn-primary" onclick="javascript:history.back()">
       </td>
      </tr>
      
    </table>
  </div>
</body>
</html>