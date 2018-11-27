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
<!-- �̺�Ʈó�� -->
<script type="text/javascript">

$(function(){
	$('#idBtn').click(function(){
		// ��ưŬ�� �� ó�� ����
		// �Է��� ID�� �д´�
		var userid=$('#userid').val();
		if(userid.trim()=="")
		{
			$('userid').focus();
			return; //���α׷����� (�Է�������)
		}
		// id=>Model�� ����(MemberModel)
		$.ajax({
			type:'post',
			url:'idcheck_ok.do',
			data:{"userid":userid}, // JSON (�ڹٽ�ũ��Ʈ ��üǥ�����)
			success:function(response)
			{
				// �������ó������
				var count=response.trim(); //response���� 0 or 1�� �ִ°�.
				if(count==0) //���̵� ��밡��
				{
					$('#result').html("<font color=blue>"
							+userid+"��(��) ��밡���� ���̵��Դϴ�.</font>");
					$('#ok').html("<input type=button "
							+"id=idok value=Ȯ�� onclick=ok('"+userid+"')>");
				}
				else // count==1 ; �ߺ����̵� ����
				{
					$('#result').html("<font color=red>"
						+userid+"��(��) �̹� ������Դϴ�.</font>");
				}
			}
		});	
	});
});

// ���־��ִ� �޼ҵ�
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
      <input type=button value="�ߺ�üũ" id="idBtn"
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