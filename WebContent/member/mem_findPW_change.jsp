<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Share JEJU</title>
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
<body>
	  <div id="title">
	  	<h3>비밀번호 재설정</h3>
	  	<p>새로운 비밀번호를 설정해주세요.</p>	  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			   <div class="form-group">
			      <label for="exampleInputEmail1">새 비밀번호</label>
			      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="영문,숫자,특수문자 조합 8자리 이상 설정해주세요.">
			    </div>    
			    <div class="form-group">
			      <label for="exampleInputPassword1">비밀번호 확인</label>
			      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="변경할 비밀번호를 한번 더 입력해주세요.">
			    </div>	
   			   <div class="form-group" style="margin:0 45%; margin-top:20px;"> 
			      <button type="submit" class="btn btn-danger btn-md">완료</button>
			  </div>		 						
  			</form>
	      </div>
	   </div>
      </div>
</body>
</html>