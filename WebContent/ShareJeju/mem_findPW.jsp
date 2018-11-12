<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
#title{
	text-align: center;
	margin: 200px 300px 0px 300px;
}
.list-group{
	padding : 70px 300px 0px 300px ;
}
.form-control{
	padding: 22px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 세개 반드시 있어야 jquery/ajax 가능 -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<body>
	  <div id="title">
	  	<h3>비밀번호를 잊으셨나요?</h3>
	  	<p>아래에 등록하신 이메일 주소를 입력해주시면</p>
 	 	<p>재설정을 위한 링크를 보내드리겠습니다.</p>		  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			    <div class="form-group" style="margin-top:-31px;">
			      <label for="exampleInputPassword1">이메일주소</label>
			      <input type="email" class="form-control" id="InputEmail" 
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
   			   <div class="form-group" style="margin:0 40%; margin-top:20px;"> 
			      <button type="button" class="btn btn-danger btn-md" 
			      	data-toggle="modal" data-target="#confirmMsg">이메일 받기</button>
			  
			    <!-- Modal -->
				 <div class="modal fade" id="confirmMsg" role="dialog">
				   <div class="modal-dialog">
				   
				     <!-- Modal content-->
				     <div class="modal-content">
				       <div class="modal-header">
				         <button type="button" class="close" data-dismiss="modal">&times;</button>
				         <h4 class="modal-title">이메일 전송 완료</h4>
				       </div>
				       <div class="modal-body">
				       <p>....@naver.com(메일주소)로 링크를 발송하였습니다. 메일함을 확인해주세요.</p>       	
				
				       </div>
				       <div class="modal-footer">
				         <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
				       </div>
				     </div>      
				   </div>
				 </div>
			  
			  </div>			 						
  			</form>
	      </div>
	   </div>
      </div>      
</body>
</html>