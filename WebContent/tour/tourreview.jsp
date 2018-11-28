<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- ��¥���� -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

.sub_contents{
margin:0 auto;
width:75%;
}
#detail_photo
{
margin-top:100px;
background-color:red;
width:50%;
height:400px;
float:left;
}
#detail_info
{
margin-top:100px;
display:inline-block;
width:50%;
height:400px;
padding:20px;
background-color:#54d9cd;
}
#detail_bar
{
padding-top:20px;
}
#detail_bar ul
{
display:block;
width:100%;
height:100px;
}
#detail_review
{
clear:both;
}
#detailname
{
font-weight: bold;
}
#info
{
font-weight: bold;
}
#detail_bar ul li
{
width:14%;
list-style:none;
float:left;
font-size:15px;
font-weight:bold;
}
#detail_review table td

{
padding:7px;
}
#detail_review table tr #likes

{
color:#54d9cd;
}
#detail_review .reviewtable
{
border=0;
width:90%;
margin:0 auto;
text-align:center;
}
.btn_color:hover
{
color: #54d9cd; 
border-color:#54d9cd;
background-color:#fff;
}

.btn_color
{
color: #fff; 
background-color:#54d9cd;
border-color:#54d9cd;
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
</head>
<body>

<div id=detail_bar>
<ul class="text-center">
<li><img src="../images/icon/like.png" width=30% ><br><br>���ƿ�</li>
<li><img src="../images/icon/heart.png" width=30% ><br><br>��</li>
<li><img src="../images/icon/review.png" width=30% ><br><br>���� ����</li>
<li><img src="../images/icon/write.png" width=30% ><br><br>���� ���</li>
<li><img src="../images/icon/map.png" width=30% ><br><br>�湮�߾��</li>
<li><img src="../images/icon/view.png" width=30% ><br><br>��ȸ</li>
<li><img src="../images/icon/share.png" width=30% ><br><br>SNS ����</li>
</ul>

</div>
<div id=detail_review>

<table style="margin-left:70px" width=90%;>
	<tr>
	  <td style="margin-left:70px" width=95%>
		 <h2 style="font-weight:bold;color:#54d9cd;">���డ�� ����(����)</h2>
	  </td>
	  <td width=5%>
		<%-- <c:if test="${sessionScope.review_userid!=null }"> <!-- �α����� ���� �� --> --%>
		  <a href="../tour/tourreview_insert.do?id=${id}" class="btn btn-md btn_color">���� ����</a>
		<%-- </c:if> --%>
	  </td>
	</tr>
    <tr>
      <td colspan="2"><h4>�ֽ� | ��õ | ��</h4></td>
    </tr>
</table>


<table class="reviewtable">
<c:forEach var="vo" items="${ list }">
	<tr>
	  <td width="15%" style="float:left;"><img src="../images/profile1.jpg" width=100px style="border-radius:50%;" ></td>
		<td width=75% rowspan="3" style="text-align:left;">
		 <h3 style="font-weight:bold;color:#54d9cd;"> <!-- ���� ���� --> ${vo.review_subject }</h3>
		 <!-- ���俵�� --> ${vo.review_content }
		 <br><!-- ���� ���� -->
		</td>
	  <td id="likes" width=25% rowspan="4"><img src="../images/icon/likeicon.png" width=20px> 1 </td>
	</tr>
    <tr>
      <td><!-- ���̵� ���� --> ${vo.review_userid }</td>
    </tr>
    <tr>
      <td ><!-- ��¥���� --> ${vo.review_regdate }</td>
    </tr>
    <tr>
      <td colspan="5" class="text-right">
       <button type="button" class="btn btn-xs btn_color"
       data-toggle="modal" data-target="#deleteconfirm">����</button>
       <a href="../tour/tourreview_update.do?id=${id}&review_id=${vo.review_id}" class="btn btn-xs btn_color">����</a>
      </td>
    </tr>
    <tr>
      <td colspan="3">
      <hr size="5" width="90%" style="padding: 0;margin-top: 10px; border:1px solid #54d9cd">
      </td>
    </tr>
</c:forEach>
</table>

<div class="modal fade" id="deleteconfirm" role="dialog">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
   </div>
   <div class="modal-body">
    <p>���� �����Ͻðڽ��ϱ� ?</p>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">��</button>
    <button type="button" class="btn btn-default" data-dismiss="modal">�ƴϿ�</button>
   </div>
  </div>
 </div>
</div>

</div> 

</div>
</body>
</html>