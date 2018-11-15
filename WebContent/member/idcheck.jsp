<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.row{
  margin: 0px auto;
  width: 280px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<!-- 이벤트처리 -->
<script type="text/javascript">
// 일반 자바스크립트 : window.onload=function(){}
// $(document).ready(function(){}) ==> (document).ready 생략가능
$(function(){
	$('#idBtn').click(function(){
		// 버튼클릭 시 처리 영역
		// 입력한 ID를 읽는다
		var id=$('#id').val();
		if(id.trim()=="")
		{
			$('id').focus();
			return; //프로그램종료 (입력전상태)
		}
		// id=>Model로 전송(MemberModel)
		$.ajax({
			type:'post',
			url:'../member/idcheck_ok.do',
			data:{"id":id}, // JSON (자바스크립트 객체표현방식)
			success:function(response)
			{
				// 정상수행처리영역
				/*
					jsp ==> 처리 결과 출력
					================
						1) HTML
						2) XMl ==> 파싱
				*/
				var count=response.trim(); //response에는 0 or 1만 있는것.
				if(count==0) //아이디 사용가능
				{
					$('#result').html("<font color=blue>"
							+id+"는(은) 사용가능한 아이디입니다.</font>");
					$('#ok').html("<input type=button "
							+"id=idok value=확인 onclick=ok('"+id+"')>");
				}
				else // count==1 ; 중복아이디 존재
				{
					$('#result').html("<font color=red>"
						+id+"는(은) 이미 사용중입니다.</font>");
				}
			}
			/* error:function(res)
			{
				// 에러처리
			} */
		});	
	});
});

// 값넣어주는 메소드
function ok(id)
{
	// parent: join.jsp
	parent.joinFrm.id.value=id;
	parent.Shadowbox.close();
}
</script>
</head>
<body>
 <div class="container"> 
  <div class="row">
   <table class="table">
    <tr>
     <td>
      ID : <input type=text id="id">
      <input type=button value="중복체크" id="idBtn"
       class="btn btn-xs btn-primary">
     </td>
    </tr>
    <tr>
     <td class="text-center" id="result"></td>
    </tr>
    <tr>
     <td class="text-center" id="ok"></td>
    </tr>
   </table>
  </div>
 </div>
</body>
</html>