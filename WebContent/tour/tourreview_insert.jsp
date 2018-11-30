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
      <h1 style="font-weight:bold;color:#54d9cd;">리뷰 쓰기</h1>
      <form method="post" action="../tour/tourreview_insert_ok.do"
      enctype="multipart/form-data">
       <input type="hidden" name="cid" value="${id}">
         <table class="table-bordered table-hover" id="review_write">
         <tr>
          <th width=20% class="text-center">제목</th>
          <td class="text-center"><input type=text name=review_subject style="width:100%"></td>
          <th class="text-center">파일첨부</th>
          <td class="text-center"><input type=file name=upload size=30 style="width:100%"></td>
         </tr>
         
         
         
         <tr>
          <th style="vertical-align:middle" class="text-center">후기</th>
          <td class="text-center" colspan="5">
          <textarea style="width:100%" rows="20" name="review_content"></textarea>
          </td>
         </tr>
		 <tr>
		  <td class="text-center" colspan="4">
		  <input type="submit" value="등록"
		         id="writeBtn" class="btn btn-sm btn_color">
		  <input type=button value="취소" class="btn btn-sm btn_color"
		         onclick="javascript:history.back()">
		 </tr>
       </table>
       </form>
     </div> 


   </body>
</html>