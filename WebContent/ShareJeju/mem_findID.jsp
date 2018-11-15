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
<!-- 세개 반드시 있어야 jquery/ajax 가능 -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<body>
	  <div id="title">
	  	<h3>아이디 찾기</h3>
	  	<p>회원가입 시 입력한 이메일주소와 생년월일로 ID를 찾아보세요.</p>	  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			    <div class="form-group">
			      <label for="exampleInputPassword1">이메일주소</label>
			      <input type="email" class="form-control" id="InputEmail" 
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
    			<div class="form-group">
			      <label for="exampleInputPassword1">생년월일</label>
			      <input type="text" class="form-control" id="InputBirth" 
			      	placeholder="ex)19951101">
			    </div>
   			   <div class="form-group" style="margin-top:20px"> 
			    <div class="col-sm-6 text-right" style="margin-left:15px">
			      <button type="submit" class="btn btn-danger btn-md">찾기</button>
			    </div>
   			    <div class="col-sm-6 text-left" style="margin-left:-20px">
			      <button type="submit" class="btn btn-secondary btn-md">취소</button>
			    </div>
			  </div>			 						
  			</form>
		    <div class="text-center" style="margin-left:-30px">
		      <a href="mem_findPW.jsp" style="margin-left:30px">비밀번호찾기</a>
		    </div>&nbsp;&nbsp;&nbsp;&nbsp;
		  </div>	
  	      <div class="form-group" style="margin-top:20px; margin-left:10px"> 
		    <div class="text-center">
		      아직 회원이 아니세요?&nbsp;<a href="mem_join.jsp"><u>회원가입</u></a>
		    </div>
		  </div>	
	      </div>
	   </div>
      </div>
</body>
</html>