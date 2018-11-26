<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <style type="text/css">
.table>tbody>tr>th{
	vertical-align: middle; 	
}
.table>tbody>tr>td{
vertical-align: middle; 	
}
.table{
	margin-bottom: 0px;
}
</style>

</head>
<body>
	<div class="container" style="margin-top:100px">
		<h3 class="text-center">�������뺸��</h3>
		<div class="row">
			<table class="table table-hover">
				<tr>
					<th width=20% class="text-center success">����</th>
						<td colspan="3" class="text-center">${vo.title }</td>
				</tr>
				<tr>
					<td width=80% colspan="2" class="text-right">${vo.created_at }</td>
					<th class="text-center success">��ȸ��</th>
						<td class="text-center">${vo.hit }</td>
				</tr>
				<tr>
					<th width=20% class="text-center success">����</th>
						<td colspan="3" class="text-left" height=450px>${vo.contents }</td>
				</tr>
				<tr>
					<th width=20% class="text-center success">÷������</th>
						<td colspan="3" class="text-left">${vo.files }</td>
				</tr>
			</table>
			<table class="table">
				<tr>
					<td width=80%><a href="../member/notice_list.do" class="btn btn-md btn-danger">���</a></td>
					<td class="text-right"><a href="../member/notice_update.do?id=${vo.id }" class="btn btn-md btn-info">����</a>
					<a href="#" class="btn btn-md btn-primary"
					data-toggle="modal" data-target="#confirmMsg">����</a></td>
				</tr>
			</table>
		</div>
		<div class="row" >
		  <table class="table" style="margin-top:20px">
			<tr>
			   <th width=20% class="text-center" style="background-color: rgb(242, 238, 238);">������</th>
				<td width=80% class="text-left"><a href="../member/notice_detail.do?id=${vo.id-1 }">������Ŭ��</a></td>
			</tr>
			<tr>
				<th width=20% class="text-center" style="background-color: rgb(242, 238, 238);">������</th>
				 <td width=80% class="text-left"><a href="../member/notice_detail.do?id=${vo.id+1 }">������Ŭ��</a></td>
			</tr>
		  </table>
		 </div>
		 
	    <!-- ����Ȯ�� Modal -->
		 <div class="modal fade" id="confirmMsg" role="dialog">
		   <div class="modal-dialog">
		   
		     <!-- Modal content-->
		     <div class="modal-content">
		       <div class="modal-header">
		         <button type="button" class="close" data-dismiss="modal">&times;</button>
		         <h4 class="modal-title">����Ȯ�� </h4>
		       </div>
		       <div class="modal-body">
		       <p>���� �����Ͻðڽ��ϱ�?</p>       	
		
		       </div>
		       <div class="modal-footer">
		       
		     <form method="post" action="../member/notice_delete.do">
               <input type="hidden" name="id" value="${vo.id }">
               <input type=submit value=Ȯ��
		        class="btn btn-sm btn-warning">
			   <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">���</button>
        	 </form>
		       </div>
		     </div>      
		   </div>
		 </div>
	</div>
</body>
</html>