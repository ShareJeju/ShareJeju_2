<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
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
background-color:lightgray;
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
#detail_map
{
background-color:green;
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
</style>
</head>
<body>
<div class="sub_contents">
<div id=detail_photo><img src="images/detail_photo.jpg" width=100% height=400px ></div>
<div id=detail_info >
<h3 id=detailname>��� �̸�</h3>
<br>
<h4>���ܼ���</h4>
<br>
<h4 id=info>�⺻����</h4>

�ּ�<br>
���<br>
�ð�<br>
����ó<br>
������Ʈ<br>
����<br>
�޹�
</div>
<div id=detail_bar>
<ul class="text-center">
<li><img src="images/icon/like.png" width=30% ><br><br>���ƿ�</li>
<li><img src="images/icon/heart.png" width=30% ><br><br>��</li>
<li><img src="images/icon/review.png" width=30% ><br><br>����</li>
<li><img src="images/icon/write.png" width=30% ><br><br>���� ���</li>
<li><img src="images/icon/map.png" width=30% ><br><br>�湮�߾��</li>
<li><img src="images/icon/view.png" width=30% ><br><br>��ȸ</li>
<li><img src="images/icon/share.png" width=30% ><br><br>SNS ����</li>
</ul>

</div>
<div id=detail_map>�󼼺�����������</div>

</div>
</body>
</html>