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
<!-- �ڹٽ�ũ��Ʈ ; ��й�ȣ üũ ���� -->
<body>
  <div id="title">
  	<h3>�� ���� ����</h3>
  </div>
    <div id="content" class="container">
      <div class="row">
          <div class="list-group">
            <form method="post" action="../member/modify_ok.do">
			   <div class="form-group">
			      <label>���̵�</label>
			      <input type="text" class="form-control" name=id placeholder="ID�Է�"
			      value="${vo.userid}" readonly>
			      
			    </div>    
   			    <div class="form-group">
			      <label>���� ��й�ȣ</label>
			      <input type="password" class="form-control" name=pw placeholder="���� ��й�ȣ �Է�">
			    </div>
			    <div class="form-group">
			      <label>�� ��й�ȣ</label>
			      <input type="password" class="form-control" name=newpw placeholder="�� ��й�ȣ �Է�">
			    </div>
   			    <div class="form-group">
			      <label>�� ��й�ȣ Ȯ��</label>
			      <input type="password" class="form-control" name=newpw2 placeholder="�� ��й�ȣ ���Է�">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�г���</label>
			      <input type="text" class="form-control" name=name
			      	placeholder="�г����� ������� �Է����ּ���."  value="${vo.name}">
			    </div>
			    <div class="form-group">
			      <label for="exampleInputPassword1">�̸���</label>
			      <input type="email" class="form-control" name=email
			      	placeholder="sharejeju@sharejeju.com"  value="${vo.email}">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">�������</label>
			      <input type="text" class="form-control" name=birth
			      	placeholder="ex)19951101"  value="${vo.birth}">
			    </div>
   			    <div class="form-group">
			      <label for="exampleInputPassword1">����ó</label>
			      <input type="text" class="form-control" name=phone
			      	placeholder="ex)010-6547-4654"  value="${vo.phone}">
			    </div>
   		        <div class="form-group">
			        <label for="exampleSelect1">��������</label>
				  	  <select class="form-control2" name=region>
				        <option>��������</option>
				        <option ${vo.region=='����'?'selected="selected"':''}>����</option>
				        <option ${vo.region=='���'?'selected="selected"':''}>���</option>
				        <option ${vo.region=='�λ�'?'selected="selected"':''}>�λ�</option>
				        <option ${vo.region=='����'?'selected="selected"':''}>����</option>
				        <option ${vo.region=='�뱸'?'selected="selected"':''}>�뱸</option>
				        <option ${vo.region=='����'?'selected="selected"':''}>����</option>
				        <option ${vo.region=='���'?'selected="selected"':''}>���</option>
				        <option ${vo.region=='����'?'selected="selected"':''}>����</option>
				        <option ${vo.region=='����'?'selected="selected"':''}>����</option>
				  	  </select>
				  </div>	
   			    <div class="form-group">
			      <div class="form-check">
			      <label class="form-check-label">����</label>
			          <input type="radio" class="form-check-input" name=sex value="M"
			          style="margin-left:10px" ${vo.sex=='M'?"checked":'' }>
                  		����
                 	  <input type="radio" class="form-check-input" name=sex value="F"
                 	   style="margin-left:10px" ${vo.sex=='F'?"checked":'' }>
                  		����
			      </div>
    		    </div>
    		     <div class="form-group">
			      <label for="exampleTextarea">�ڱ�Ұ�</label>
			      <textarea class="form-control" name=intro rows="5">${vo.intro }</textarea>
  				  <small class="form-text text-muted" style="text-align:center">1,000 bytes</small>
        	   </div>
        	   
  			   <div class="form-group" style="margin-top:20px"> 
			    <div class="text-center">
			      <input type="submit" value="����" class="btn btn-danger btn-md">
			      <input type="button" value="���" class="btn btn-warning btn-md"
						 onclick="javascript:history.back()">
			    </div>
			  </div>			  
		  </form>				 						
  	      </div>
	   </div>
      </div>
</body>
</html>