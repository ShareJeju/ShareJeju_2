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
<!-- ���� �ݵ�� �־�� jquery/ajax ���� -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<body>
  <div id="title">
  	<h3>ȸ������</h3>
  	<p>������ ������ ������ �������ֿ� ��ƺ�����.</p>	  	
  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			   <div class="form-group">
			      <label for="exampleInputEmail1">���̵�</label>
			      <input type="text" class="form-control" id="InputID" placeholder="ID �Է�">
			    </div>    
			    <div class="form-group">
			      <label for="exampleInputPassword1">��й�ȣ</label>
			      <input type="password" class="form-control" id="InputPassword" placeholder="��й�ȣ �Է�">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">��й�ȣ Ȯ��</label>
			      <input type="password" class="form-control" id="InputPassword" placeholder="��й�ȣ ���Է�">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�̸�</label>
			      <input type="text" class="form-control" id="InputName" 
			      	placeholder="�̸��� ������� �Է����ּ���.">
			    </div>
			    <div class="form-group">
			      <label for="exampleInputPassword1">�̸���</label>
			      <input type="email" class="form-control" id="InputEmail" 
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�������</label>
			      <input type="text" class="form-control" id="InputBirth" 
			      	placeholder="ex)19951101">
			    </div>
   			    <div class="form-group">
			      <div class="form-check">
			      <label class="form-check-label">����</label>
			          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios" value="option1"
			          style="margin-left:10px">
                  		����
                 	  <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios" value="option2"
                 	   style="margin-left:10px">
                  		����
			      </div>
			     </div>
     		      <div class="form-group">
			        <label for="exampleSelect1">��������</label>
				  	  <select class="custom-control custom-select" style="margin-left:15px">
				        <option value="" selected="selected" >��������</option>
				        <option value="����">����</option>
				        <option value="���">���</option>
				        <option value="�λ�">�λ�</option>
				        <option value="����">����</option>
				        <option value="�뱸">�뱸</option>
				        <option value="����">����</option>
				        <option value="���">���</option>
				        <option value="����">����</option>
				        <option value="����">����</option>
				  	  </select>
				  </div>			  
				  
   			   <div class="form-group" style="margin-top:20px"> 
			    <div class="text-center">
			      <button type="submit" class="btn btn-danger btn-md">ȸ������</button>
			    </div>
			  </div>			 						
  			</form>
  	      <div class="form-group" style="margin-top:20px; margin-left:10px"> 
		    <div class="text-center">
		      �̹� ȸ���̼���?&nbsp;<a href="mem_login.jsp"><u>�α����ϱ�</u></a>
		    </div>
		  </div>	
	      </div>
	   </div>
      </div>
</body>
</html>