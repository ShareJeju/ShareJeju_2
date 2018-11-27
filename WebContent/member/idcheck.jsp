<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.container
{
  background: white;
}
.row{
  margin: 0px auto;
  width: 280px;
}
</style>
<!-- 이벤트처리 -->
<script type="text/javascript">

$(function(){
	$('#idBtn').click(function(){
		// 버튼클릭 시 처리 영역
		// 입력한 ID를 읽는다
		var userid=$('#userid').val();
		if(userid.trim()=="")
		{
			$('userid').focus();
			return; //프로그램종료 (입력전상태)
		}
		// id=>Model로 전송(MemberModel)
		$.ajax({
			type:'post',
			url:'idcheck_ok.do',
			data:{"userid":userid}, // JSON (자바스크립트 객체표현방식)
			success:function(response)
			{
				// 정상수행처리영역
				var count=response.trim(); //response에는 0 or 1만 있는것.
				if(count==0) //아이디 사용가능
				{
					$('#result').html("<font color=blue>"
							+userid+"는(은) 사용가능한 아이디입니다.</font>");
					$('#ok').html("<input type=button "
							+"id=idok value=확인 onclick=ok('"+userid+"')>");
				}
				else // count==1 ; 중복아이디 존재
				{
					$('#result').html("<font color=red>"
						+userid+"는(은) 이미 사용중입니다.</font>");
				}
			}
		});	
	});
});

// 값넣어주는 메소드
function ok(userid)
{
	// parent: join.jsp
	parent.joinFrm.userid.value=userid;
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
      ID : <input type=text id="userid">
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