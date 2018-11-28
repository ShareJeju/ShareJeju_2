<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
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
</style>
</head>
<body style="background-color:white">
  <div class="col-sm-12" >
    <center><h3> 리뷰수정  </h3></center>
    <form method="post" action="../hotel/hotel_review_update_ok.do">
   <%--  <input type="hidden" name="did" value="${vo.review_id }"> --%>
    <input type="hidden" name="cid" value="${cid }">
    <input type="hidden" name="no" value="${no }">
    <table class="table table-hover" id="review_write">
      <tr>
       <th width=15% class="text-center">제목</th>
       <td width=85% class="text-left" colspan="5">
         <input type=text name=subject size=50 value="${vo.review_subject }">
        
       </td>
      </tr>
      
      <tr>
       <th style="vertical-align:middle" class="text-center">후기</th>
       <td width=85% class="text-left" colspan="5">
         <textarea rows="10" cols="50" name=content>${vo.review_content}</textarea>
       </td>
     </tr>
     
      
      <tr>
       <td class="text-center" colspan="2">
        <input type=submit value="등록하기" id="writeBtn" class="btn btn-sm btn-primary">
        <input type=button value="취소" class="btn btn-sm btn-primary" onclick="javascript:history.back()">
       </td>
      </tr>
    </table>
    </form>
  </div>
</body>
</html>