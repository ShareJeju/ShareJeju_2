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
.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
</style>
<body>
	  <div id="title">
	  	<h3>��й�ȣ�� �����̳���?</h3>
	  	<p>�Ʒ��� ����Ͻ� �̸��� �ּҸ� �Է����ֽø�</p>
 	 	<p>�缳���� ���� ��ũ�� �����帮�ڽ��ϴ�.</p>		  	
	  </div>
    <div class="container">
      <div class="row">
          <div class="list-group">
            <form>
			    <div class="form-group" style="margin-top:-31px;">
			      <label for="exampleInputPassword1">�̸����ּ�</label>
			      <input type="email" class="form-control" id="InputEmail" 
			      	placeholder="sharejeju@sharejeju.com">
			    </div>
   			   <div class="form-group" style="margin:0 40%; margin-top:20px;"> 
			      <button type="button" class="btn btn-danger btn-md" 
			      	data-toggle="modal" data-target="#confirmMsg">�̸��� �ޱ�</button>
			  
			    <!-- Modal -->
				 <div class="modal fade" id="confirmMsg" role="dialog">
				   <div class="modal-dialog">
				   
				     <!-- Modal content-->
				     <div class="modal-content">
				       <div class="modal-header">
				         <button type="button" class="close" data-dismiss="modal">&times;</button>
				         <h4 class="modal-title">�̸��� ���� �Ϸ�</h4>
				       </div>
				       <div class="modal-body">
				       <p>....@naver.com(�����ּ�)�� ��ũ�� �߼��Ͽ����ϴ�. �������� Ȯ�����ּ���.</p>       	
				
				       </div>
				       <div class="modal-footer">
				         <button type="button" class="btn btn-default" data-dismiss="modal">Ȯ��</button>
				       </div>
				     </div>      
				   </div>
				 </div>
			  
			  </div>			 						
  			</form>
	      </div>
	   </div>
      </div>      
</body>
</html>