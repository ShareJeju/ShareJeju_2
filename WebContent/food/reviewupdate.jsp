<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
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
  border: 1px solid black;
  border-color:black;
  color:gray;
}
#review_write th{
  padding:10px;
  background-color:#54d9cd;
  color:white;
}
#review_write td{
  padding:10px;
}
.btn_color:hover
{
color: #54d9cd; 
border-color:#54d9cd;
background-color:#fff;
}

.btn_color
{
color: #fff; 
background-color:#54d9cd;
border-color:#54d9cd;
}
h1
{
text-align:center;
}
</style>
</head>
<body class="homepage" style="background-color: white ">
	<!-- Header -->
      <div>
      <br>
      <br>
      <h1 style="font-weight:bold;color:#54d9cd;">리뷰수정</h1>
      <form method="post" action="../food/reviewupdate_ok.do">
		 <input type="hidden" name="cid" value="${vo.cid}">  
       <input type="hidden" name="review_id" value="${vo.review_id}">
     
  	    <table class="table-bordered table-hover" id="review_write">
	      <tr>
	       <th width=20% class="text-center">제목</th>
	       <td class="text-center"><input type=text name=review_subject style="width:100%" value="${vo.review_subject }"></td>
	       <th class="text-center">아이디</th>
	       <td class="text-center"><input type=text name=review_userid style="width:100%" value="${vo.review_userid }"></td>
	      </tr>
	      
	      
	      
	      <tr>
	       <th style="vertical-align:middle" class="text-center">후기</th>
	       <td class="text-center" colspan="5">
	       <textarea style="width:100%" rows="20" name="review_content"> ${vo.review_content }</textarea>
	       </td>
	      </tr>
<tr>
<td class="text-center" colspan="4">
<input type="submit" value="리뷰 수정"
id="writeBtn" class="btn btn-sm btn_color">
<input type=button value="취소" class="btn btn-sm btn_color"
onclick="javascript:history.back()">
</tr>
	    </table>
	    </form>
	  </div> 


	</body>
</html>