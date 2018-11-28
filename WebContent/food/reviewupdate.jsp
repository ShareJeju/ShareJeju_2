<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
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