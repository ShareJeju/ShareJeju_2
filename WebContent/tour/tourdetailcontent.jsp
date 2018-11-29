<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 날짜포맷 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
<div class="sub_contents">
<div id=detail_photo><img src="${vo1.img }" width=100% height=400px ></div>
<div id=detail_info >
<h3 id=detailname>${vo1.name }</h3>
<br>
<h4>${vo1.text }</h4>
<br>
<h4 id=info>기본정보</h4>

${vo1.addr }<br>
${vo1.cost }<br>
${vo1.time }<br>
${vo1.tel }<br>
웹사이트<br>
맛집<br>
휴무
</div>

<jsp:include page="tourreview.jsp"></jsp:include>

</div>
</body>
</html>