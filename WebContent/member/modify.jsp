<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 자바스크립트 ; 비밀번호 체크 구현 -->
<body>
  <div id="title">
  	<h3>내 정보 수정</h3>
  </div>
    <div id="content" class="container">
      <div class="row">
          <div class="list-group">
            <form method="post" action="../member/modify_ok.do">
			   <div class="form-group">
			      <label>아이디</label>
			      <input type="text" class="form-control" name=id placeholder="ID입력"
			      value="${vo.userid}" readonly>
			      
			    </div>    
   			    <div class="form-group">
			      <label>기존 비밀번호</label>
			      <input type="password" class="form-control" name=pw placeholder="기존 비밀번호 입력">
			    </div>
			    <div class="form-group">
			      <label>새 비밀번호</label>
			      <input type="password" class="form-control" name=newpw placeholder="새 비밀번호 입력">
			    </div>
   			    <div class="form-group">
			      <label>새 비밀번호 확인</label>
			      <input type="password" class="form-control" name=newpw2 placeholder="새 비밀번호 재입력">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">닉네임</label>
			      <input type="text" class="form-control" name=name
			      	placeholder="닉네임을 공백없이 입력해주세요."  value="${vo.name}">
			    </div>
			    <div class="form-group">
			      <label for="exampleInputPassword1">이메일</label>
			      <input type="email" class="form-control" name=email
			      	placeholder="sharejeju@sharejeju.com"  value="${vo.email}">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">생년월일</label>
			      <input type="text" class="form-control" name=birth
			      	placeholder="ex)19951101"  value="${vo.birth}">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">연락처</label>
			      <input type="text" class="form-control" name=phone
			      	placeholder="ex)010-6547-4654"  value="${vo.phone}">
			    </div>
   		        <div class="form-group">
			        <label for="exampleSelect1">거주지역</label>
				  	  <select class="form-control2" name=region>
				        <option>지역선택</option>
				        <option ${vo.region=='서울'?'selected="selected"':''}>서울</option>
				        <option ${vo.region=='경기'?'selected="selected"':''}>경기</option>
				        <option ${vo.region=='부산'?'selected="selected"':''}>부산</option>
				        <option ${vo.region=='대전'?'selected="selected"':''}>대전</option>
				        <option ${vo.region=='대구'?'selected="selected"':''}>대구</option>
				        <option ${vo.region=='광주'?'selected="selected"':''}>광주</option>
				        <option ${vo.region=='울산'?'selected="selected"':''}>울산</option>
				        <option ${vo.region=='강원'?'selected="selected"':''}>강원</option>
				        <option ${vo.region=='제주'?'selected="selected"':''}>제주</option>
				  	  </select>
				  </div>	
   			    <div class="form-group">
			      <div class="form-check">
			      <label class="form-check-label">성별</label>
			          <input type="radio" class="form-check-input" name=sex value="M"
			          style="margin-left:10px" ${vo.sex=='M'?"checked":'' }>
                  		남자
                 	  <input type="radio" class="form-check-input" name=sex value="F"
                 	   style="margin-left:10px" ${vo.sex=='F'?"checked":'' }>
                  		여자
			      </div>
    		    </div>
    		     <div class="form-group">
			      <label for="exampleTextarea">자기소개</label>
			      <textarea class="form-control" name=intro rows="5">${vo.intro }</textarea>
  				  <small class="form-text text-muted" style="text-align:center">1,000 bytes</small>
        	   </div>
        	   
  			   <div class="form-group" style="margin-top:20px"> 
			    <div class="text-center">
			      <input type="submit" value="수정" class="btn btn-danger btn-md">
			      <input type="button" value="취소" class="btn btn-warning btn-md"
						 onclick="javascript:history.back()">
			    </div>
			  </div>			  
		  </form>				 						
  	      </div>
	   </div>
      </div>
</body>
</html>