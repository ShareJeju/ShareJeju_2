<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<!-- ���������� -->
<link rel="stylesheet" type="text/css" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
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
<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function idcheck()
{
	Shadowbox.open({
		content:'../member/idcheck.do',
		title:'���̵��ߺ�üũ',
		player:'iframe',
		width:300,
		height:150
	});
	
}
</script>
</head>
<body>
  <div id="title">
  	<h3>ȸ������</h3>
  	<p>������ ������ ������ �������ֿ� ��ƺ�����.</p>	  	
  </div>
    <div id="content" class="container">
      <div class="row">
          <div class="list-group">
            <form name="joinFrm" method="post" action="join_ok.do">
			   <div class="form-group">
			      <label for="exampleInputEmail1">���̵�</label>
			      <div class="row">
				      <div class="col-sm-9">
				      <input type="text" class="form-control" name=userid placeholder="ID �Է�" readonly>
				      </div>
					  <div class="col-sm-3">
					  <input type=button value="�ߺ�üũ" class="btn btn-md btn-success" onclick="idcheck()"
					  style="margin: 3px 0 -10px -10px; padding: 9px 30px;"></div>
				  </div>
			    </div>    
			    <div class="form-group">
			      <label for="exampleInputPassword1">��й�ȣ</label>
			      <input type="password" class="form-control" name=pw required placeholder="��й�ȣ �Է�">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword2">��й�ȣ Ȯ��</label>
			      <input type="password" class="form-control" name=pw1 placeholder="��й�ȣ ���Է�">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�г���</label>
			      <input type="text" class="form-control" name=name required
			      	placeholder="�г����� ������� �Է����ּ���.">
			    </div>
			    <div class="form-group">
			      <label for="exampleInputPassword1">�̸���</label>
			      <input type="email" class="form-control" name=email required
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�������</label>
			      <input type="text" class="form-control" name=birth required
			      	placeholder="ex)19951101">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">����ó</label>
			      <input type="text" class="form-control" name=phone
			      	placeholder="ex)010-6547-4654">
			    </div>
   		        <div class="form-group">
			        <label for="exampleSelect1">��������</label>
				  	  <select class="form-control2" name=region>
				        <option>��������</option>
				        <option>����</option>
				        <option>���</option>
				        <option>�λ�</option>
				        <option>����</option>
				        <option>�뱸</option>
				        <option>����</option>
				        <option>���</option>
				        <option>����</option>
				        <option>����</option>
				  	  </select>
				  </div>	
   			    <div class="form-group">
			      <div class="form-check">
			      <label class="form-check-label">����</label>
			          <input type="radio" class="form-check-input" name=sex value="M"
			          style="margin-left:10px" checked>
                  		����
                 	  <input type="radio" class="form-check-input" name=sex value="F"
                 	   style="margin-left:10px">
                  		����
			      </div>
    		    </div>
  			   <div class="form-group" style="margin-top:20px"> 
			    <div class="text-center">
			      <input type="submit" value="ȸ������" class="btn btn-danger btn-md">
			      <input type="button" value="���" class="btn btn-warning btn-md"
						 onclick="javascript:history.back()">
			    </div>
			  </div>			  
		  </form>				 						

  	      <div class="form-group" style="margin-top:20px; margin-left:10px"> 
		    <div class="text-center">
		      �̹� ȸ���̼���?&nbsp;<a href="main.jsp"><u>�α����ϱ�</u></a>
		    </div>
		  </div>	
	      </div>
	   </div>
      </div>
</body>
</html>