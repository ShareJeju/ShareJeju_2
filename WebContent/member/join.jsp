<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../../bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.container
{
  background: white;
}
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
<link rel="stylesheet" type="text/css" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 세개 반드시 있어야 jquery/ajax 가능 -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function idcheck()
{
	Shadowbox.open({
		content:'../member/idcheck.do',
		title:'아이디중복체크',
		player:'iframe',
		width:300,
		height:150
	});
	
}
</script>
</head>
<body>
  <div id="title">
  	<h3>회원가입</h3>
  	<p>여행의 소중한 순간을 쉐어제주에 담아보세요.</p>	  	
  </div>
    <div id="content" class="container">
      <div class="row">
          <div class="list-group">
            <form name="joinFrm" method="post" action="join_ok.do">
			   <div class="form-group">
			      <label for="exampleInputEmail1">아이디</label>
			      <div class="row">
				      <div class="col-sm-9">
				      <input type="text" class="form-control" name=userid placeholder="ID 입력" readonly>
				      </div>
					  <div class="col-sm-3">
					  <input type=button value="중복체크" class="btn btn-md btn-success" onclick="idcheck()"
					  style="margin: 3px 0 -10px -10px; padding: 9px 30px;"></div>
				  </div>
			    </div>    
			    <div class="form-group">
			      <label for="exampleInputPassword1">비밀번호</label>
			      <input type="password" class="form-control" name=pw required placeholder="비밀번호 입력">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword2">비밀번호 확인</label>
			      <input type="password" class="form-control" name=pw1 placeholder="비밀번호 재입력">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">닉네임</label>
			      <input type="text" class="form-control" name=name required
			      	placeholder="닉네임을 공백없이 입력해주세요.">
			    </div>
			    <div class="form-group">
			      <label for="exampleInputPassword1">이메일</label>
			      <input type="email" class="form-control" name=email required
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">생년월일</label>
			      <input type="text" class="form-control" name=birth required
			      	placeholder="ex)19951101">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">연락처</label>
			      <input type="text" class="form-control" name=phone
			      	placeholder="ex)010-6547-4654">
			    </div>
   		        <div class="form-group">
			        <label for="exampleSelect1">거주지역</label>
				  	  <select class="form-control2" name=region>
				        <option>지역선택</option>
				        <option>서울</option>
				        <option>경기</option>
				        <option>부산</option>
				        <option>대전</option>
				        <option>대구</option>
				        <option>광주</option>
				        <option>울산</option>
				        <option>강원</option>
				        <option>제주</option>
				  	  </select>
				  </div>	
   			    <div class="form-group">
			      <div class="form-check">
			      <label class="form-check-label">성별</label>
			          <input type="radio" class="form-check-input" name=sex value="M"
			          style="margin-left:10px" checked>
                  		남자
                 	  <input type="radio" class="form-check-input" name=sex value="F"
                 	   style="margin-left:10px">
                  		여자
			      </div>
    		    </div>
  			   <div class="form-group" style="margin-top:20px"> 
			    <div class="text-center">
			      <input type="submit" value="회원가입" class="btn btn-danger btn-md">
			      <input type="button" value="취소" class="btn btn-warning btn-md"
						 onclick="javascript:history.back()">
			    </div>
			  </div>			  
		  </form>				 						

  	      <div class="form-group" style="margin-top:20px; margin-left:10px"> 
		    <div class="text-center">
		      이미 회원이세요?&nbsp;<a href="main.jsp"><u>로그인하기</u></a>
		    </div>
		  </div>	
	      </div>
	   </div>
      </div>
</body>
</html>