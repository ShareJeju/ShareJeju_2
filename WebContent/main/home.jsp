<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<!--
   Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
</head>


<body class="homepage">
   <jsp:include page="home_header.jsp"></jsp:include>
   <!-- Header -->
   <div id="main_home" style="background-color: white;">
      <div id="content" class="container">

         <div class="row" style="background-color:white;margin-top:10px; float: right; left:-1%">
            <jsp:include page="../weather.jsp"></jsp:include>
         </div>

			<div class="row"
            style="background-color: white; margin-top: 80px;">
            <div style="margin-top: -50px; margin-bottom: -55px">
               <h3 class="text-left">º£½ºÆ® ¸®ºä</h3>
            </div>
            <!-- MainModel.java -->
               <c:forEach var="vo" items="${list }" >
                  <div class="col-sm-3"">
                     <div class="panel">
                        <a href="../schedule/schedule_detail.do?id=${vo.id}"> <img src="../schedule_upload/${vo.main_img}" width=100%
                           height=200>
                        </a>
                        <div class="panel-heading" style="text-align: right">
                          ${fn:length(vo.title)>15?fn:substring(vo.title,0,15)+="...":vo.title }<br>${fn:length(vo.hashtag)>15?fn:substring(vo.hashtag,0,15)+="...":vo.hashtag }
                        </div>
                     </div>
                  </div>
               </c:forEach>
         </div>
         
         <div class="row"
            style="background-color: white; margin-top: 70px;">
            <div style="margin-top: -60px; margin-bottom: -55px">
               <h3 class="text-left">º£½ºÆ® ¸À±¤¼÷</h3> 
            </div>
               <!-- MainModel.java -->
               <c:forEach var="vo" items="${list1 }" >
                  <div class="col-sm-3"">
                     <c:if test="${vo.category=='¸ÀÁý'}">
                     <div class="panel">
                        <a href="../food/fooddetailcontent.do?id=${vo.id }"> <img src="${vo.img}" width=100%
                           height=200>
                        </a>
                        <div class="panel-heading" style="text-align: right">
                          ${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }
                        </div>
                     </div>
                     </c:if>
                     
                     <c:if test="${vo.category=='¼÷¹Ú'}">
                     <div class="panel">
                        <a href="../hotel/hotelDetailContent.do?no=${vo.id }"> <img src="${vo.img}" width=100%
                           height=200>
                        </a>
                        <div class="panel-heading" style="text-align: right">
                           ${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }
                        </div>
                     </div>
                     </c:if>
                     
                     <c:if test="${vo.category=='°ü±¤'}">
                     <div class="panel">
                        <a href="../tour/tourdetailcontent.do?id=${vo.id }"> <img src="${vo.img}" width=100%
                           height=200>
                        </a>
                        <div class="panel-heading" style="text-align: right">
                           ${fn:length(vo.name)>15?fn:substring(vo.name,0,15)+="...":vo.name }
                        </div>
                     </div>
                     </c:if>
                     
                  </div>
               </c:forEach>
         </div>

      </div>
   </div>
   
   <!-- Tweet -->
         <div id="tweet">
            <div class="container" style="height: 100px;">
               <section style="margin-top: 30px">
                  <blockquote>ÈÞ°¡¿Í Ä£±¸´Â ÀÎ»ý¿¡¼­ °¡Àå ¸ÚÁø µÎ °¡Áö ¶ó°íµé ÇÏÁÒ.</blockquote>
               </section>
            </div>
         </div>
</body>
</html>