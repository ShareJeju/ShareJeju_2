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
	  	<h3>�α���</h3>
	  	<p> �������ָ� �����ϱ� ���� �α����� ���ּ���.</p>	  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			   <div class="form-group">
			      <label for="exampleInputEmail1">���̵�</label>
			      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="ID �Է�">
			    </div>    
			    <div class="form-group">
			      <label for="exampleInputPassword1">��й�ȣ</label>
			      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="��й�ȣ �Է�">
			    </div>
			    
     	       <div class="form-group" style="margin-left:10px"> 
			    <div class="custom-control custom-checkbox">
			      <input type="checkbox" class="custom-control-input" id="customCheck1">
			      <label class="custom-control-label" for="customCheck1">�α��� ����</label>
			    </div>
		  	   </div>	
   			   <div class="form-group" style="margin-top:20px"> 
			    <div class="col-sm-6 text-right" style="margin-left:15px">
			      <button type="submit" class="btn btn-danger btn-md">�α���</button>
			    </div>
   			    <div class="col-sm-6 text-left" style="margin-left:-20px">
			      <button type="submit" class="btn btn-secondary btn-md">���</button>
			    </div>
			  </div>			 						
  			</form>
	      <div class="form-group" style="margin-top:80px"> 
		    <div class="col-sm-6 text-right" >
		      <a href="mem_findID.jsp" style="margin-left:20px">���̵�ã��</a>
		    </div>
		    <div class="col-sm-6 text-left" style="margin-left:-30px">
		      <a href="mem_findPW.jsp" style="margin-left:30px">��й�ȣã��</a>
		    </div>&nbsp;&nbsp;&nbsp;&nbsp;
		  </div>	
  	      <div class="form-group" style="margin-top:10px"> 
		    <div class="text-center">
		      <a href="mem_join.jsp"><u>ȸ������</u></a>
		    </div>
		  </div>	
          
			  
			  
  	<!-- 	<div class="form-group has-success">
				  <label class="form-control-label" for="inputSuccess1">Valid input</label>
				  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
				  <div class="valid-feedback">Success! You've done it.</div>
				</div>
				
				<div class="form-group has-danger">
				  <label class="form-control-label" for="inputDanger1">Invalid input</label>
				  <input type="text" value="wrong value" class="form-control is-invalid" id="inputInvalid">
				  <div class="invalid-feedback">Sorry, that username's taken. Try another?</div>
				</div> -->

	      </div>
	   </div>
      </div>
</body>
</html>