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
	  	<h3>���̵� ã��</h3>
	  	<p>ȸ������ �� �Է��� �̸����ּҿ� ������Ϸ� ID�� ã�ƺ�����.</p>	  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			    <div class="form-group">
			      <label for="exampleInputPassword1">�̸����ּ�</label>
			      <input type="email" class="form-control" id="InputEmail" 
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
    			<div class="form-group">
			      <label for="exampleInputPassword1">�������</label>
			      <input type="text" class="form-control" id="InputBirth" 
			      	placeholder="ex)19951101">
			    </div>
   			   <div class="form-group" style="margin-top:20px"> 
			    <div class="col-sm-6 text-right" style="margin-left:15px">
			      <button type="submit" class="btn btn-danger btn-md">ã��</button>
			    </div>
   			    <div class="col-sm-6 text-left" style="margin-left:-20px">
			      <button type="submit" class="btn btn-secondary btn-md">���</button>
			    </div>
			  </div>			 						
  			</form>
		    <div class="text-center" style="margin-left:-30px">
		      <a href="mem_findPW.jsp" style="margin-left:30px">��й�ȣã��</a>
		    </div>&nbsp;&nbsp;&nbsp;&nbsp;
		  </div>	
  	      <div class="form-group" style="margin-top:20px; margin-left:10px"> 
		    <div class="text-center">
		      ���� ȸ���� �ƴϼ���?&nbsp;<a href="mem_join.jsp"><u>ȸ������</u></a>
		    </div>
		  </div>	
	      </div>
	   </div>
      </div>
</body>
</html>